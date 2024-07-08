package it.uniroma3.siw.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import it.uniroma3.siw.controller.validator.CuocoValidator;
import it.uniroma3.siw.model.Credentials;
import it.uniroma3.siw.model.Cuoco;
import it.uniroma3.siw.service.CredentialsService;
import it.uniroma3.siw.service.CuocoService;
import jakarta.validation.Valid;

@Controller
public class CuocoController {
	@Autowired
	private CuocoService CuocoService;
	@Autowired
	private CuocoValidator cuocoValidator;
	@Autowired
	private CredentialsService credentialsService;

	@GetMapping(value = "/admin/formNewCuoco")
	public String formNewCuoco(Model model) {
		model.addAttribute("cuoco", new Cuoco());
		return "admin/formNewCuoco.html";
	}

	@GetMapping(value = "/admin/manageCuoco")
	public String manageCuoco(Model model) {
		model.addAttribute("cuochi", this.CuocoService.getAllCuocos());
		return "admin/manageCuoco.html";
	}

	@GetMapping("/admin/indexAdmin")
	public String indexAdmin() {
		return "admin/indexAdmin.html";
	}

	@GetMapping(value = "/admin/indexCuoco")
	public String indexCuoco() {
		return "admin/indexCuoco.html";
	}

	@PostMapping("/admin/cuoco")
	public String newCuoco(@Valid @ModelAttribute("cuoco") Cuoco cuoco, BindingResult bindingResult, Model model) {
		this.cuocoValidator.validate(cuoco, bindingResult);
		if (!bindingResult.hasErrors()) {
			this.CuocoService.saveCuoco(cuoco);
			model.addAttribute("cuoco", cuoco);
			return "redirect:/cuoco/" + cuoco.getId();
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
	public String getCuochi(Model model, Principal principal) {
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
		model.addAttribute("cuochi", this.CuocoService.getAllCuocos());
		return "cuochi.html";
	}

	@PostMapping("/admin/cuoco/{id}/delete")
	public String deleteCuoco(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {
		// Ottenere le credenziali dell'utente autenticato
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String username = authentication.getName();
		Credentials credentials = credentialsService.getCredentials(username);

		// Ottenere il cuoco da eliminare
		Cuoco cuocoToDelete = CuocoService.getCuoco(id);

		// Verifica se l'utente autenticato sta tentando di eliminare il suo stesso
		// cuoco
		if (credentials.getCuoco() != null && credentials.getCuoco().getId().equals(cuocoToDelete.getId())) {
			redirectAttributes.addFlashAttribute("error", "Non puoi eliminare te stesso!");
			redirectAttributes.addFlashAttribute("cuocoId", id);
			return "redirect:/admin/manageCuoco"; // Reindirizza con parametro error
		}

		// Esegui l'eliminazione diretta del cuoco
		CuocoService.deleteById(id);
		return "redirect:/admin/manageCuoco"; // Reindirizza alla pagina di gestione dei cuochi dopo l'eliminazione
	}

	/* chef */
	@GetMapping(value = "/chef/indexUser")
	public String indexUser() {
		return "chef/indexUser.html";
	}

}
