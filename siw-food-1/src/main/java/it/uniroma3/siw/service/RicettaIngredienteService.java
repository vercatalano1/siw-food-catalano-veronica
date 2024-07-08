package it.uniroma3.siw.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.uniroma3.siw.model.RicettaIngrediente;
import it.uniroma3.siw.repository.RicettaIngredienteRepository;
import jakarta.transaction.Transactional;

@Service
public class RicettaIngredienteService {
	@Autowired
	public RicettaIngredienteRepository ricettaIngredienteRepository;

	@Transactional
	public void delete(RicettaIngrediente ricettaIngrediente) {
		ricettaIngredienteRepository.delete(ricettaIngrediente);
	}

	@Transactional
	public RicettaIngrediente findByRicettaAndIngrediente(Long ricettaId, Long ingredienteId) {
		return ricettaIngredienteRepository.findByRicettaIdAndIngredienteId(ricettaId, ingredienteId);
	}
	
	@Transactional
	// Metodo per salvare un RicettaIngrediente
    public void save(RicettaIngrediente ricettaIngrediente) {
        ricettaIngredienteRepository.save(ricettaIngrediente);
    }

}
