package it.uniroma3.siw.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.uniroma3.siw.model.Cuoco;
import it.uniroma3.siw.model.Ricetta;
import it.uniroma3.siw.repository.CuocoRepository;
import it.uniroma3.siw.repository.RicettaRepository;
import jakarta.transaction.Transactional;



@Service
public class RicettaService {
	@Autowired
	private RicettaRepository ricettaRepository;
	@Autowired
	private  CuocoRepository cuocoRepository;
	
	@Transactional
	public Ricetta findById(Long id) {
		return ricettaRepository.findById(id).get();
	}	

	@Transactional
	public Iterable<Ricetta> findAll() {
		return ricettaRepository.findAll();
	}

	@Transactional
	public  Ricetta save(Ricetta Ricetta) {
		// TODO Auto-generated method stub
		return ricettaRepository.save(Ricetta);
		
	}

	@Transactional
	public List<Ricetta> findByPartialNome(String nome) {
        return ricettaRepository.findByNomeStartingWithIgnoreCase(nome);
    }
	
	@Transactional
	public void associaCuocoARicetta(String nomeRicetta, String nomeCuoco, String cognomeCuoco) {
        // Recupera il cuoco dal repository
        Cuoco cuoco = cuocoRepository.findByNomeAndCognome(nomeCuoco, cognomeCuoco);
        // Chiama il metodo del repository per associare il cuoco alla ricetta
        ricettaRepository.associaCuocoARicetta(nomeRicetta, cuoco);
    }

	@Transactional
	public void delete(Ricetta ricetta) {
		 ricettaRepository.delete(ricetta);
	}

	@Transactional
	public List<Ricetta> findByCuoco(Cuoco cuoco) {
		return ricettaRepository.findByCuoco(cuoco);
	}

	
}
