package it.uniroma3.siw.repository;

import java.time.LocalDate;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import it.uniroma3.siw.model.Cuoco;

public interface CuocoRepository extends CrudRepository<Cuoco, Long>{

	public boolean existsByNomeIgnoreCaseAndCognomeIgnoreCaseAndData(String nome, String cognome, LocalDate data);

	public Cuoco findByNomeAndCognome(String nomeCuoco, String cognomeCuoco);

	@Modifying
    @Query(value = "UPDATE ricetta SET cuoco_id = NULL WHERE cuoco_id = :cuocoId", nativeQuery=true)
    void deleteReferencesInRicettaCuochi(@Param("cuocoId") Long cuocoId);


}
