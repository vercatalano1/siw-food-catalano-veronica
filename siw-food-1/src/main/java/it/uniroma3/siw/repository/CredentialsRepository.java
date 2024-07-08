package it.uniroma3.siw.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import it.uniroma3.siw.model.Credentials;

public interface CredentialsRepository extends CrudRepository<Credentials, Long>{

	public Optional<Credentials> findByUsername(String username);

	public Credentials findCuocoByUsername(String username);

	@Modifying
    @Query("DELETE FROM Credentials c WHERE c.cuoco.id = :cuocoId")
    void deleteByCuocoId(@Param("cuocoId") Long cuocoId);


}
