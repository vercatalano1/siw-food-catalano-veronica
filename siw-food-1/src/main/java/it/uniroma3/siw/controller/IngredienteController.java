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
	
	
	@GetMapping("/admin/formNewIngrediente")
	public String formNewIngrediente(@RequestParam(value = "source", required = false)String source, Model model) {
	    model.addAttribute("source", source);
		model.addAttribute("ingrediente", new Ingrediente());
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
	public String newIngrediente(@RequestParam("source") String source, 
	                             @Valid @ModelAttribute("ingrediente") Ingrediente ingrediente, 
	                             BindingResult bindingResult, Model model) {
	    this.ingredienteValidator.validate(ingrediente, bindingResult);
	    if (!bindingResult.hasErrors()) {
	        this.ingredienteService.save(ingrediente); 
	        if ("formNewRicetta".equals(source)) {
	            return "redirect:/admin/formNewRicetta";
	        } else if ("indexIngrediente".equals(source)) {
	            return "/admin/indexAdmin.html";
	        } else {
	            return "/admin/indexAdmin.html"; // una pagina di default se il valore di source non corrisponde a nessuna condizione
	        }
	    } else {
	        model.addAttribute("ingrediente", ingrediente);
	        return "admin/formNewIngrediente.html"; 
	    }
	}

	
	/*@GetMapping("/ingredienti")
	public String getIngredienti(Model model) {
		model.addAttribute("ingredienti", this.ingredienteService.findAll());
		return "ingredienti.html";
	}*/
	
	@PostMapping("/admin/ingrediente/{id}/delete")
    public String deleteIngrediente(@PathVariable("id") Long id, Model model) {
        Ingrediente ingrediente = ingredienteService.findById(id);
        if (ingrediente != null) {
            ingredienteService.deleteById(id);
            return "redirect:/admin/manageIngrediente";
        } else {
            model.addAttribute("messaggioErrore", "Ingrediente non trovato");
            return "admin/indexIngrediente.html";
            }
        }
	
}
