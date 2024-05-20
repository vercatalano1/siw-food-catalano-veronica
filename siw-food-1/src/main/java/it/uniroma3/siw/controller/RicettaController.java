package it.uniroma3.siw.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import it.uniroma3.siw.controller.validator.RicettaValidator;
import it.uniroma3.siw.model.Ingrediente;
import it.uniroma3.siw.model.Ricetta;
import it.uniroma3.siw.service.IngredienteService;
import it.uniroma3.siw.service.RicettaService;
import jakarta.validation.Valid;

@Controller
public class RicettaController {
	@Autowired
	private RicettaService ricettaService;
	@Autowired
	private IngredienteService ingredienteService;
	@Autowired
	private RicettaValidator ricettaValidator;
	
	@GetMapping("/admin/indexRicetta")
	public String indexRicetta() {
		return "admin/indexRicetta.html";
	}
	
	@GetMapping(value="/admin/manageRicetta")
	public String manageRicetta(Model model) {
		model.addAttribute("ricette", this.ricettaService.findAll());
		return "admin/manageRicetta.html";
	}
	
	@GetMapping(value="/admin/formNewRicetta")
	public String formNewRicetta(Model model) {
		model.addAttribute("ricetta", new Ricetta());
		return "admin/formNewRicetta.html";
	}

	@GetMapping(value="/admin/formUpdateRicetta/{id}")
	public String formUpdateRicetta(@PathVariable("id") Long id, Model model) {
		model.addAttribute("ricetta", ricettaService.findById(id));
		return "admin/formUpdateRicetta.html";
	}

	@PostMapping("/admin/ricetta")
	public String newRicetta(@Valid @ModelAttribute("ricetta") Ricetta ricetta, BindingResult bindingResult, Model model) {
		
		this.ricettaValidator.validate(ricetta, bindingResult);
		if (!bindingResult.hasErrors()) {
			this.ricettaService.save(ricetta); 
			model.addAttribute("ricetta", ricetta);
			return "ricetta.html";
		} else {
			return "admin/formNewRicetta.html"; 
		}
	}

	@GetMapping("/ricetta/{id}")
	public String getRicetta(@PathVariable("id") Long id, Model model) {
		model.addAttribute("ricetta", this.ricettaService.findById(id));
		return "ricetta.html";
	}

	@GetMapping("/ricetta")
	public String getRicette(Model model) {		
		model.addAttribute("ricette", this.ricettaService.findAll());
		return "ricette.html";
	}
	
	@GetMapping("/formSearchRicette")
	public String formSearchRicette() {
		return "formSearchRicette.html";
	}

	@PostMapping("/searchRicette")
	public String searchRicette(Model model, @RequestParam String nome) {
		model.addAttribute("ricette", this.ricettaService.findBynome(nome));
		return "foundRicette.html";
	}
	
	@GetMapping("/admin/updateIngredienti/{id}")
	public String updateIngredienti(@PathVariable("id") Long id, Model model) {

		List<Ingrediente> ingredientiToAdd = this.ingredientiToAdd(id);
		model.addAttribute("ingredientiToAdd", ingredientiToAdd);
		model.addAttribute("ricetta", this.ricettaService.findById(id));

		return "admin/ingredientiToAdd.html";
	}

	@GetMapping(value="/admin/addIngredeinteToRicetta/{ingredienteId}/{ricettaId}")
	public String addIngredienteToRicetta(@PathVariable("ingredienteId") Long ingredienteId, @PathVariable("ricettaId") Long ricettaId, Model model) {
		Ricetta ricetta = this.ricettaService.findById(ricettaId);
		Ingrediente ingrediente= this.ingredienteService.findById(ingredienteId);
		List<Ingrediente> ingredienti = ricetta.getIngredienti();
		ingredienti.add(ingrediente);
		this.ricettaService.save(ricetta);
		
		List<Ingrediente> ingredientiToAdd = ingredientiToAdd(ricettaId);
		
		model.addAttribute("ricetta", ricetta);
		model.addAttribute("ingredientiToAdd", ingredientiToAdd);

		return "admin/ingredientiToAdd.html";
	}
	
	@GetMapping(value="/admin/removeIngredienteFromRicetta/{ingredienteId}/{ricettaId}")
	public String removeIngredienteFromRicetta(@PathVariable("ingredienteId") Long ingredienteId, @PathVariable("ricettaId") Long ricettaId, Model model) {
		Ricetta ricetta = this.ricettaService.findById(ricettaId);
		Ingrediente ingrediente= this.ingredienteService.findById(ingredienteId);
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
	
	
}
