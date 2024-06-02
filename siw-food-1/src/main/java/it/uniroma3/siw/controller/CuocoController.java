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

import it.uniroma3.siw.controller.validator.CuocoValidator;
import it.uniroma3.siw.controller.validator.RicettaValidator;
import it.uniroma3.siw.model.Cuoco;
import it.uniroma3.siw.service.CuocoService;
import jakarta.validation.Valid;

@Controller
public class CuocoController {
	@Autowired 
	private CuocoService CuocoService;
	@Autowired
	private CuocoValidator cuocoValidator;

	@GetMapping(value="/admin/formNewCuoco")
	public String formNewCuoco(Model model) {
		model.addAttribute("cuoco", new Cuoco());
		return "admin/formNewCuoco.html";
	}
	
	@GetMapping(value="/admin/manageCuoco")
	public String manageCuoco(Model model) {
		model.addAttribute("cuochi", this.CuocoService.getAllCuocos());
		return "admin/manageCuoco.html";
	}
	
	@GetMapping(value="/admin/indexCuoco")
	public String indexCuoco() {
		return "admin/indexCuoco.html";
	}
	
	@PostMapping("/admin/cuoco")
	public String newCuoco(@Valid @ModelAttribute("cuoco") Cuoco cuoco, BindingResult bindingResult, Model model) {
		this.cuocoValidator.validate(cuoco, bindingResult);
		if (!bindingResult.hasErrors()) {
			this.CuocoService.saveCuoco(cuoco); 
			model.addAttribute("cuoco", cuoco);
			return "cuoco.html";
		} else {
			return "admin/formNewCuoco.html"; 
		}
	}

	@GetMapping("/cuoco/{id}")
	public String getCuoco(@PathVariable("id") Long id, Model model) {
		model.addAttribute("cuoco", this.CuocoService.getCuoco(id));
		return "cuoco.html";
	}
	@GetMapping("/cuoco")
	public String getCuochi(Model model) {
		model.addAttribute("cuochi", this.CuocoService.getAllCuocos());
		return "cuochi.html";
	}
	
	@DeleteMapping("/admin/cuoco/{id}")
    public String deleteCuoco(@PathVariable("id") Long id, Model model) {
        Cuoco Cuoco = CuocoService.getCuoco(id);
        if (Cuoco != null) {
            CuocoService.delete(Cuoco);
            // Redirect alla pagina dell'indice dei servizi dopo la cancellazione
            return "redirect:/admin/indexCuoco";
        } else {
            // Nel caso in cui il Cuoco non esista
            model.addAttribute("messaggioErrore", "Cuoco non trovato");
            return "admin/indexCuoco.html";
            }
        }


}
