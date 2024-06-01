package it.uniroma3.siw.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import it.uniroma3.siw.model.Ingrediente;
import it.uniroma3.siw.repository.IngredienteRepository;



@Service
public class IngredienteService {
	@Autowired
	private IngredienteRepository ingredienteRepository;
	
	public Ingrediente findById(Long id) {
		return ingredienteRepository.findById(id).get();
	}
	
	public Iterable<Ingrediente> findAll() {
		return ingredienteRepository.findAll();
	}
	
	public Iterable<Ingrediente> findIngredientiNotInRicetta(@Param("id") Long id){
		 return ingredienteRepository.findIngredientiNotInRicetta(id);
	}

	public void save(Ingrediente Ingrediente) {
		// TODO Auto-generated method stub
		ingredienteRepository.save(Ingrediente);
	}

	public boolean existsByNome(String nome) {
		return ingredienteRepository.existsByNome(nome);
	}

	public void delete(Ingrediente ingrediente) {
		ingredienteRepository.delete(ingrediente);
	}
}
