package it.uniroma3.siw.repository;

import org.springframework.data.repository.CrudRepository;

import it.uniroma3.siw.model.Cuoco;

public interface CuocoRepository extends CrudRepository<Cuoco, Long>{

	public boolean existsByNomeAndCognome(String nome, String cognome);

	public Cuoco findByNomeAndCognome(String nomeCuoco, String cognomeCuoco);

}
