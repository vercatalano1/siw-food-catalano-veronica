package it.uniroma3.siw.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.uniroma3.siw.model.Ricetta;
import it.uniroma3.siw.repository.RicettaRepository;



@Service
public class RicettaService {
	@Autowired
	private RicettaRepository ricettaRepository;
	
	public Ricetta findById(Long id) {
		return ricettaRepository.findById(id).get();
	}

	public Iterable<Ricetta> findAll() {
		return ricettaRepository.findAll();
	}

	public void save(Ricetta Ricetta) {
		// TODO Auto-generated method stub
		ricettaRepository.save(Ricetta);
		
	}

	public List<Ricetta> findBynome(String nome) {
		return ricettaRepository.findByNome(nome);
	}
}
