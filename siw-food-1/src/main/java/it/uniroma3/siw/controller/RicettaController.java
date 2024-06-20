package it.uniroma3.siw.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import it.uniroma3.siw.controller.validator.RicettaValidator;
import it.uniroma3.siw.model.Cuoco;
import it.uniroma3.siw.model.Ingrediente;
import it.uniroma3.siw.model.Ricetta;
import it.uniroma3.siw.service.CuocoService;
import it.uniroma3.siw.service.IngredienteService;
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
	private RicettaValidator ricettaValidator;

	@GetMapping("/admin/indexRicetta")
	public String indexRicetta() {
		return "admin/indexRicetta.html";
	}

	@GetMapping("/admin/manageRicetta")
	public String manageRicetta(Model model) {
		model.addAttribute("ricette", this.ricettaService.findAll());
		return "admin/manageRicetta.html";
	}

	@GetMapping("/admin/setCuocoToRicetta/{cuocoId}/{ricettaId}")
	public String setCuocoToricetta(@PathVariable("cuocoId") Long cuocoId, @PathVariable("ricettaId") Long ricettaId,
			Model model) {

		Cuoco cuoco = this.cuocoService.getCuoco(cuocoId);
		Ricetta ricetta = this.ricettaService.findById(ricettaId);
		ricetta.setCuoco(cuoco);
		this.ricettaService.save(ricetta);

		model.addAttribute("ricetta", ricetta);
		return "admin/formUpdateRicetta.html";
	}

	@GetMapping("/admin/addCuoco/{id}")
	public String addCuoco(@PathVariable("id") Long id, Model model) {
		model.addAttribute("cuochi", cuocoService.getAllCuocos());
		model.addAttribute("ricetta", ricettaService.findById(id));
		return "admin/cuochiToAdd.html";
	}

	@GetMapping(value = "/admin/formNewRicetta")
	public String formNewRicetta(Model model) {
		model.addAttribute("ricetta", new Ricetta());
		return "admin/formNewRicetta.html";
	}

	@GetMapping("/admin/formUpdateRicetta/{id}")
	public String formUpdateRicetta(@PathVariable("id") Long id, Model model) {
		Ricetta ricetta = ricettaService.findById(id);
		List<Ingrediente> ingredienti = ricetta.getIngredienti();
		model.addAttribute("ricetta", ricetta);
		model.addAttribute("ingredienti", ingredienti);
		return "admin/formUpdateRicetta.html";
	}

	@GetMapping("/ricetta/{id}")
	public String getRicetta(@PathVariable("id") Long id, Model model) {
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

	/*
	 * @GetMapping("/formSearchRicette") public String formSearchRicette() { return
	 * "formSearchRicette.html"; }
	 */

	@PostMapping("/searchRicette")
	public String searchRicette(Model model, @RequestParam String nome) {
		model.addAttribute("ricette", this.ricettaService.findBynome(nome));
		return "foundRicette.html";
	}

	@GetMapping("/admin/updateIngredienti/{id}")
	public String updateIngredienti(@PathVariable("id") Long id,
			@RequestParam(value = "redirectFrom", required = false) String redirectFrom, Model model) {

		List<Ingrediente> ingredientiToAdd = this.ingredientiToAdd(id);
		model.addAttribute("ingredientiToAdd", ingredientiToAdd);
		model.addAttribute("ricetta", this.ricettaService.findById(id));
		model.addAttribute("redirectFrom", redirectFrom);
		return "admin/ingredientiToAdd.html";
	}

	@PostMapping("/admin/ricetta")
	public String newRicetta(@Valid @ModelAttribute("ricetta") Ricetta ricetta, BindingResult bindingResult,
			Model model) {

		this.ricettaValidator.validate(ricetta, bindingResult);
		if (!bindingResult.hasErrors()) {
			this.ricettaService.save(ricetta);
			Ricetta savedRicetta = this.ricettaService.save(ricetta);
			model.addAttribute("ricetta", savedRicetta);
			return "redirect:/admin/updateIngredienti/" + savedRicetta.getId() + "?redirectFrom=formNewRicetta";
		} else {
			return "admin/formNewRicetta.html";
		}
	}

	@GetMapping("/admin/addIngredienteToRicetta/{ingredienteId}/{ricettaId}")
	public String addIngredienteToRicetta(@PathVariable("ingredienteId") Long ingredienteId,
			@PathVariable("ricettaId") Long ricettaId, Model model) {
		Ricetta ricetta = this.ricettaService.findById(ricettaId);
		Ingrediente ingrediente = this.ingredienteService.findById(ingredienteId);
		List<Ingrediente> ingredienti = ricetta.getIngredienti();
		ingredienti.add(ingrediente);
		this.ricettaService.save(ricetta);

		List<Ingrediente> ingredientiToAdd = ingredientiToAdd(ricettaId);

		model.addAttribute("ricetta", ricetta);
		model.addAttribute("ingredientiToAdd", ingredientiToAdd);

		return "admin/ingredientiToAdd.html";
	}

	@GetMapping("/admin/removeIngredienteFromRicetta/{ingredienteId}/{ricettaId}")
	public String removeIngredienteFromRicetta(@PathVariable("ingredienteId") Long ingredienteId,
			@PathVariable("ricettaId") Long ricettaId, Model model) {
		Ricetta ricetta = this.ricettaService.findById(ricettaId);
		Ingrediente ingrediente = this.ingredienteService.findById(ingredienteId);
		List<Ingrediente> ingredienti = ricetta.getIngredienti();
		ingredienti.remove(ingrediente);
		this.ricettaService.save(ricetta);

		List<Ingrediente> ingredientiToAdd = ingredientiToAdd(ricettaId);

		model.addAttribute("ricetta", ricetta);
		model.addAttribute("ingredientiToAdd", ingredientiToAdd);

		return "admin/ingredientiToAdd.html";
	}

	private List<Ingrediente> ingredientiToAdd(Long ricettaId) {
		List<Ingrediente> ingredientiToAdd = new ArrayList<>();

		for (Ingrediente s : ingredienteService.findIngredientiNotInRicetta(ricettaId)) {
			ingredientiToAdd.add(s);
		}
		return ingredientiToAdd;
	}

	@GetMapping("/admin/ricetta/{id}")
	public String deleteRicetta(@PathVariable("id") Long id, Model model) {
		Ricetta ricetta = ricettaService.findById(id);
		if (ricetta != null) {
			ricettaService.delete(ricetta);
			// Redirect alla pagina dell'indice dei servizi dopo la cancellazione
			return "redirect:/ricetta";
		} else {
			// Nel caso in cui il Cuoco non esista
			model.addAttribute("messaggioErrore", "Ricetta non trovata");
			return "admin/indexRicetta.html";
		}
	}

}
