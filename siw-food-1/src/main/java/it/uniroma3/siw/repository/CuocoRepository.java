package it.uniroma3.siw.repository;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import it.uniroma3.siw.model.Cuoco;

public interface CuocoRepository extends CrudRepository<Cuoco, Long>{

	public boolean existsByNomeAndCognome(String nome, String cognome);

	public Cuoco findByNomeAndCognome(String nomeCuoco, String cognomeCuoco);

	@Modifying
    @Query(value = "UPDATE ricetta SET cuoco_id = NULL WHERE cuoco_id = :cuocoId", nativeQuery=true)
    void deleteReferencesInRicettaCuochi(@Param("cuocoId") Long cuocoId);
}
