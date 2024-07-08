package it.uniroma3.siw.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import it.uniroma3.siw.controller.validator.RicettaValidator;
import it.uniroma3.siw.model.Credentials;
import it.uniroma3.siw.model.Cuoco;
import it.uniroma3.siw.model.Ingrediente;
import it.uniroma3.siw.model.Ricetta;
import it.uniroma3.siw.model.RicettaIngrediente;
import it.uniroma3.siw.service.CredentialsService;
import it.uniroma3.siw.service.CuocoService;
import it.uniroma3.siw.service.IngredienteService;
import it.uniroma3.siw.service.RicettaIngredienteService;
import it.uniroma3.siw.service.RicettaService;
import jakarta.validation.Valid;

@Controller
public class RicettaController {
	@Autowired
	private RicettaService ricettaService;
	@Autowired
	private CuocoService cuocoService;
	@Autowired
	private IngredienteService ingredienteService;
	@Autowired
	private RicettaIngredienteService ricettaIngredienteService;
	@Autowired
	private RicettaValidator ricettaValidator;
	@Autowired
	private CredentialsService credentialsService;

	@GetMapping("/admin/indexRicetta")
	public String indexRicetta() {
		return "admin/indexRicetta.html";
	}

	@GetMapping("/admin/manageRicetta")
	public String manageRicetta(Model model) {
		model.addAttribute("ricette", this.ricettaService.findAll());
		return "admin/manageRicetta.html";
	}

	@GetMapping(value = "/user/formNewRicetta")
	public String formNewRicetta(Model model) {
		model.addAttribute("ricetta", new Ricetta());
		return "user/formNewRicetta.html";
	}

	@GetMapping("/user/setCuocoToRicetta/{cuocoId}/{ricettaId}")
	public String setCuocoToricetta(@PathVariable("cuocoId") Long cuocoId, @PathVariable("ricettaId") Long ricettaId,
			Model model) {

		Cuoco cuoco = this.cuocoService.getCuoco(cuocoId);
		Ricetta ricetta = this.ricettaService.findById(ricettaId);
		ricetta.setCuoco(cuoco);
		this.ricettaService.save(ricetta);
		model.addAttribute("cuochi", cuocoService.getAllCuocos());
		model.addAttribute("ricetta", ricetta);
		return "user/formUpdateRicetta.html";
	}

	@GetMapping("/user/formUpdateRicetta/{id}")
	public String formUpdateRicetta(@PathVariable("id") Long id, Model model) {
		Ricetta ricetta = ricettaService.findById(id);
		List<RicettaIngrediente> ingredienti = ricetta.getIngredienti();
		List<Cuoco> cuochi = cuocoService.getAllCuocos();

		model.addAttribute("ricetta", ricetta);
		model.addAttribute("cuochi", cuochi);
		model.addAttribute("ingredienti", ingredienti);
		return "user/formUpdateRicetta.html";
	}

	@GetMapping("/ricetta/{id}")
	public String getRicetta(@PathVariable("id") Long id, Model model, Principal principal) {
		if (principal != null) {
			String username = principal.getName();
			// Trova le credenziali corrispondenti all'username
			Credentials credentials = credentialsService.getCredentials(username);
			String userRole = credentials.getRole();
			if (Credentials.DEFAULT_ROLE.equals(userRole)) {
				// Trova il cuoco corrispondente alle credenziali
				Cuoco currentCuoco = credentials.getCuoco();
				model.addAttribute("currentCuoco", currentCuoco);
			}
		}
		Cuoco cuoco = ricettaService.findById(id).getCuoco();
		model.addAttribute("ricetta", ricettaService.findById(id));
		model.addAttribute("ingredienti", ricettaService.findById(id).getIngredienti());
		model.addAttribute("cuoco", cuoco);
		return "ricetta.html";
	}

	@GetMapping("/ricetta")
	public String getRicette(Model model) {
		model.addAttribute("ricette", this.ricettaService.findAll());
		return "ricette.html";
	}

	@PostMapping("/searchRicette")
	public String searchRicette(Model model, @RequestParam String nome) {
		List<Ricetta> ricette = ricettaService.findByNome(nome);
		model.addAttribute("ricette", ricette);
		return "foundRicette.html";
	}

	@GetMapping("/user/updateIngredienti/{id}")
	public String updateIngredienti(@PathVariable("id") Long id, Model model) {

		List<Ingrediente> ingredientiToAdd = this.ingredientiToAdd(id);
		model.addAttribute("ingredientiToAdd", ingredientiToAdd);
		model.addAttribute("ricetta", this.ricettaService.findById(id));
		return "user/ingredientiToAdd.html";
	}

	@PostMapping("/user/saveIngredientiQuantita")
	public String saveIngredientiQuantita(@RequestParam("ricettaId") Long ricettaId,
			@RequestParam Map<String, String> ingredientiQuantita, Model model) {
		Ricetta ricetta = ricettaService.findById(ricettaId);

		// Aggiorna le quantità degli ingredienti
		for (RicettaIngrediente ricettaIngrediente : ricetta.getIngredienti()) {
			String quantitaString = ingredientiQuantita
					.get("ingredienti[" + ricettaIngrediente.getIngrediente().getId() + "].quantita");
			if (quantitaString != null && !quantitaString.isEmpty()) {
				int quantita = Integer.parseInt(quantitaString);
				ricettaIngrediente.setQuantità(quantita);
			} else {
				ricettaIngrediente.setQuantità(null); // Imposta null se il valore è vuoto
			}
		}

		ricettaService.save(ricetta);
		model.addAttribute("cuochi", cuocoService.getAllCuocos());

		// Aggiungi l'oggetto ricetta aggiornato al model per renderlo disponibile nella
		// vista
		model.addAttribute("ricetta", ricetta);

		// Ritorna il nome della vista da caricare dopo il submit del form
		return "user/formUpdateRicetta";
	}

	@PostMapping("/user/ricetta")
	public String newRicetta(@Valid @ModelAttribute("ricetta") Ricetta ricetta, BindingResult bindingResult,
			Model model, Principal principal, RedirectAttributes redirectAttributes) {

		this.ricettaValidator.validate(ricetta, bindingResult);
		if (bindingResult.hasErrors()) {
			return "user/formNewRicetta.html";
		}

		String username = principal.getName();

		// Trova le credenziali corrispondenti all'username
		Credentials credentials = credentialsService.getCredentials(username);

		if (credentials == null) {
			// Gestisci nel caso in cui le credenziali non siano trovate
			redirectAttributes.addFlashAttribute("error", "Credenziali non trovate per l'utente corrente");
			return "redirect:/user/formNewRicetta.html";
		}

		String userRole = credentials.getRole();
		if (Credentials.DEFAULT_ROLE.equals(userRole)) {
			// Trova il cuoco corrispondente alle credenziali
			Cuoco currentCuoco = credentials.getCuoco();
			if (currentCuoco == null) {
				// Gestisci nel caso in cui il cuoco non sia trovato
				redirectAttributes.addFlashAttribute("error", "Cuoco non trovato per l'utente corrente");
				return "redirect:/user/formNewRicetta.html";
			}

			// Imposta il cuoco nella ricetta
			ricetta.setCuoco(currentCuoco);
		}
		// Salva la ricetta
		ricettaService.save(ricetta);

		// Redirect alla pagina di aggiunta degli ingredienti per la nuova ricetta
		return "redirect:/user/updateIngredienti/" + ricetta.getId();
	}

	@GetMapping("/user/addIngredienteToRicetta/{ingredienteId}/{ricettaId}")
	public String addIngredienteToRicetta(@PathVariable("ingredienteId") Long ingredienteId,
			@PathVariable("ricettaId") Long ricettaId, Model model) {
		Ricetta ricetta = this.ricettaService.findById(ricettaId);
		Ingrediente ingrediente = this.ingredienteService.findById(ingredienteId);

		// Crea una nuova associazione RicettaIngrediente e aggiungi alla ricetta
		RicettaIngrediente ricettaIngrediente = new RicettaIngrediente();
		ricettaIngrediente.setRicetta(ricetta);
		ricettaIngrediente.setIngrediente(ingrediente);
		ricetta.getIngredienti().add(ricettaIngrediente);

		this.ricettaService.save(ricetta);

		// Aggiorna la lista ingredientiToAdd
		List<Ingrediente> ingredientiToAdd = ingredientiToAdd(ricettaId);

		model.addAttribute("ricetta", ricetta);
		model.addAttribute("ingredientiToAdd", ingredientiToAdd);

		return "redirect:/user/updateIngredienti/" + ricetta.getId();
	}

	@GetMapping("/user/removeIngredienteFromRicetta/{ingredienteId}/{ricettaId}")
	public String removeIngredienteFromRicetta(@PathVariable("ingredienteId") Long ingredienteId,
			@PathVariable("ricettaId") Long ricettaId, Model model) {
		Ricetta ricetta = this.ricettaService.findById(ricettaId);
		Ingrediente ingrediente = this.ingredienteService.findById(ingredienteId);

		// Rimuovi la relazione RicettaIngrediente
		RicettaIngrediente ricettaIngrediente = ricettaIngredienteService.findByRicettaAndIngrediente(ricettaId,
				ingredienteId);
		if (ricettaIngrediente != null) {
			ricettaIngredienteService.delete(ricettaIngrediente);
			ricetta.getIngredienti().remove(ricettaIngrediente);
		}

		this.ricettaService.save(ricetta);

		// Aggiorna la lista ingredientiToAdd
		List<Ingrediente> ingredientiToAdd = ingredientiToAdd(ricettaId);

		model.addAttribute("ricetta", ricetta);
		model.addAttribute("ingredientiToAdd", ingredientiToAdd);

		return "redirect:/user/updateIngredienti/" + ricetta.getId();
	}

	private List<Ingrediente> ingredientiToAdd(Long ricettaId) {
		List<Ingrediente> ingredientiToAdd = new ArrayList<>();

		for (Ingrediente ingrediente : ingredienteService.findIngredientiNotInRicetta(ricettaId)) {
			ingredientiToAdd.add(ingrediente);
		}

		return ingredientiToAdd;
	}

	@GetMapping("/admin/ricetta/{id}")
	public String deleteRicetta(@PathVariable("id") Long id, Model model) {
		Ricetta ricetta = ricettaService.findById(id);
		if (ricetta != null) {
			ricettaService.delete(ricetta);
			// Redirect alla pagina di origine dopo la cancellazione
			return "redirect:/admin/manageRicetta";
		} else {
			// Nel caso in cui la Ricetta non esista
			model.addAttribute("messaggioErrore", "Ricetta non trovata");
			return "redirect:/admin/manageRicetta";
		}
	}

}
