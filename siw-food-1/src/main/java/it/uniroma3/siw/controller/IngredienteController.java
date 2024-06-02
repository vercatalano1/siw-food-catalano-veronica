package it.uniroma3.siw.controller;

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

import it.uniroma3.siw.controller.validator.IngredienteValidator;
import it.uniroma3.siw.model.Ingrediente;
import it.uniroma3.siw.service.IngredienteService;
import jakarta.validation.Valid;

@Controller
public class IngredienteController {
	@Autowired 
	private IngredienteService ingredienteService;
	@Autowired
	private IngredienteValidator ingredienteValidator;
	
	
	@GetMapping("/admin/formNewIngrediente/{ricettaId}")
	public String formNewIngrediente(@PathVariable("ricettaId") Long ricettaId, Model model) {
	    model.addAttribute("ingrediente", new Ingrediente());
	    model.addAttribute("ricettaId", ricettaId); // Aggiungi l'ID della ricetta al modello
	    return "admin/formNewIngrediente.html";
	}
	
	@GetMapping("/admin/manageIngrediente")
	public String manageIngrediente(Model model) {
		model.addAttribute("ingredienti", this.ingredienteService.findAll());
		return "admin/manageIngrediente.html";
	}
	
	@GetMapping("admin/indexIngrediente")
	public String indexIngrediente() {
		return "admin/indexIngrediente.html";
	}
	
	@PostMapping("/admin/ingrediente")
	public String newIngrediente(@Valid @ModelAttribute("ingrediente") Ingrediente ingrediente, BindingResult bindingResult,@RequestParam("ricettaId") Long ricettaId,  Model model) {
		this.ingredienteValidator.validate(ingrediente, bindingResult);
		if (!bindingResult.hasErrors()) {
			this.ingredienteService.save(ingrediente); 
			model.addAttribute("ricettaId", ricettaId);
            return "redirect:/admin/formUpdateRicetta/" + ricettaId;
		} else {
			 model.addAttribute("ingrediente", ingrediente);
			return "admin/formNewIngrediente.html"; 
		}
	}

	
	@GetMapping("/ingredienti")
	public String getIngredienti(Model model) {
		model.addAttribute("ingredienti", this.ingredienteService.findAll());
		return "ingredienti.html";
	}
	
	@DeleteMapping("/admin/Ingrediente/{id}")
    public String deleteIngrediente(@PathVariable("id") Long id, Model model) {
        Ingrediente ingrediente = ingredienteService.findById(id);
        if (ingrediente != null) {
            ingredienteService.delete(ingrediente);
            // Redirect alla pagina dell'indice dei servizi dopo la cancellazione
            return "redirect:/admin/indexIngrediente";
        } else {
            // Nel caso in cui il Ingrediente non esista
            model.addAttribute("messaggioErrore", "Ingrediente non trovato");
            return "admin/indexIngrediente.html";
            }
        }
	
}
