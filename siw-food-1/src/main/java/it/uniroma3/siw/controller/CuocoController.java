package it.uniroma3.siw.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import it.uniroma3.siw.model.Cuoco;
import it.uniroma3.siw.service.CuocoService;

@Controller
public class CuocoController {
	@Autowired 
	private CuocoService CuocoService;

	@GetMapping(value="/admin/formNewCuoco")
	public String formNewCuoco(Model model) {
		model.addAttribute("Cuoco", new Cuoco());
		return "admin/formNewCuoco.html";
	}
	
	
	@GetMapping(value="/indexCuoco")
	public String indexCuoco() {
		return "indexCuoco.html";
	}
	
	@PostMapping("/admin/cuoco")
	public String newCuoco(@ModelAttribute("Cuoco") Cuoco Cuoco, Model model) {
		if (!CuocoService.existsByNomeAndCognome(Cuoco.getNome(), Cuoco.getCognome())) {
			this.CuocoService.saveCuoco(Cuoco); 
			model.addAttribute("Cuoco", Cuoco);
			return "Cuoco.html";
		} else {
			model.addAttribute("messaggioErrore", "Questo Cuoco esiste già");
			return "admin/formNewCuoco.html"; 
		}
	}

	@GetMapping("/cuoco/{id}")
	public String getCuoco(@PathVariable("id") Long id, Model model) {
		model.addAttribute("Cuoco", this.CuocoService.getCuoco(id));
		return "cuoco.html";
	}
	@GetMapping("/cuoco")
	public String getArtists(Model model) {
		model.addAttribute("ingredienti", this.CuocoService.getAllCuocos());
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
