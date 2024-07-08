package it.uniroma3.siw.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import it.uniroma3.siw.model.Cuoco;
import it.uniroma3.siw.model.Ingrediente;
import it.uniroma3.siw.model.Ricetta;
import jakarta.transaction.Transactional;


public interface RicettaRepository extends CrudRepository<Ricetta, Long>{

	public boolean existsByNomeIgnoreCase(String nome);
	
	public List<Ricetta> findByNomeStartingWithIgnoreCase(String nome);	
	
	@Transactional
    @Modifying
    @Query("UPDATE Ricetta r SET r.cuoco = :cuoco WHERE r.nome = :nomeRicetta")
    void associaCuocoARicetta(@Param("nomeRicetta") String nomeRicetta, @Param("cuoco") Cuoco cuochi);

	public List<Ricetta> findByCuoco(Cuoco cuoco);


}
