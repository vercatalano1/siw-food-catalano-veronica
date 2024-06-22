package it.uniroma3.siw.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import it.uniroma3.siw.model.Credentials;
import it.uniroma3.siw.model.Ricetta;
import it.uniroma3.siw.service.CredentialsService;
import it.uniroma3.siw.service.RicettaService;

@Controller
public class ProfileController {

    @Autowired
    private CredentialsService credentialsService;
    
    @Autowired
    private RicettaService ricettaService;

    @GetMapping("/chef/profile")
    public String getProfile(Model model, Authentication authentication) {
        String username = authentication.getName();
        Credentials credentials = credentialsService.findCuocoByUsername(username);

        // Carica le ricette associate al cuoco
        List<Ricetta> ricette = ricettaService.findByCuoco(credentials.getCuoco());

        model.addAttribute("nome", credentials.getCuoco().getNome());
        model.addAttribute("cognome", credentials.getCuoco().getCognome());
        model.addAttribute("email", credentials.getCuoco().getEmail());
        model.addAttribute("immagine", credentials.getCuoco().getImage());
        model.addAttribute("data", credentials.getCuoco().getData());
        model.addAttribute("ricette", ricette); 

        return "chef/profile.html";
    }
    
    @GetMapping("/chef/modifica")
    public String showEditProfileForm(Model model, Authentication authentication) {
        String username = authentication.getName();
        Credentials credentials = credentialsService.findCuocoByUsername(username);

        model.addAttribute("nome", credentials.getCuoco().getNome());
        model.addAttribute("cognome", credentials.getCuoco().getCognome());
        model.addAttribute("email", credentials.getCuoco().getEmail());
        model.addAttribute("data", credentials.getCuoco().getData());

        return "chef/modifica.html";
    }

    @PostMapping("/chef/modifica")
    public String updateProfile(@RequestParam("immagine") String nuovaImmagine,
    		@RequestParam("nome") String nuovoNome,@RequestParam("cognome") String nuovoCognome,
    		@RequestParam("email") String nuovaEmail,
                                Authentication authentication) {
        String username = authentication.getName();
        Credentials credentials = credentialsService.findCuocoByUsername(username);

        credentials.getCuoco().setImage(nuovaImmagine); 
        credentials.getCuoco().setNome(nuovoNome);
        credentials.getCuoco().setCognome(nuovoCognome);
        credentials.getCuoco().setEmail(nuovaEmail);

        credentialsService.save(credentials);
        return "redirect:/chef/profile";
    }

    
    /*@GetMapping("/Cuoco/cancellaRecensione/{id}")
    public String cancellaRecensione(@PathVariable("id") Long id, Authentication authentication, Model model) {
        String username = authentication.getName();
        Credentials credentials = credentialsService.findCuocoByUsername(username);
        
        // Verifica che la recensione da cancellare appartenga all'utente autenticato
        Recensione recensione = recensioneService.findById(id);
        if (recensione != null && recensione.getCuoco().getId().equals(credentials.getCuoco().getId())) {
            recensioneService.delete(recensione);
            return "redirect:/Cuoco/profile";
        } else {
            // Gestione errore se l'utente prova a cancellare una recensione non sua
            model.addAttribute("errore", "Non hai il permesso per cancellare questa recensione.");
            return "redirect:/Cuoco/profile";
        }
    }*/
}