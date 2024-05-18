package it.uniroma3.siw.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import it.uniroma3.siw.model.Ingrediente;
import it.uniroma3.siw.service.IngredienteService;

@Controller
public class IngredienteController {
	@Autowired 
	private IngredienteService ingredienteService;

	@GetMapping(value="/admin/formNewIngrediente")
	public String formNewIngrediente(Model model) {
		model.addAttribute("ingrediente", new Ingrediente());
		return "admin/formNewIngrediente.html";
	}
	
	
	@GetMapping(value="/indexIngrediente")
	public String indexIngrediente() {
		return "indexIngrediente.html";
	}
	
	@PostMapping("/admin/ingrediente")
	public String newIngrediente(@ModelAttribute("ingrediente") Ingrediente ingrediente, Model model) {
		if (!ingredienteService.existsByNome(ingrediente.getNome())) {
			this.ingredienteService.save(ingrediente); 
			model.addAttribute("Ingrediente", ingrediente);
			return "Ingrediente.html";
		} else {
			model.addAttribute("messaggioErrore", "Questo Ingrediente esiste già");
			return "admin/formNewIngrediente.html"; 
		}
	}

	@GetMapping("/ingrediente/{id}")
	public String getIngrediente(@PathVariable("id") Long id, Model model) {
		model.addAttribute("Ingrediente", this.ingredienteService.findById(id));
		return "ingrediente.html";
	}
	@GetMapping("/ingredienti")
	public String getArtists(Model model) {
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
