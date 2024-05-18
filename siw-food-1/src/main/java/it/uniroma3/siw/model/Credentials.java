package it.uniroma3.siw.model;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;

@Entity
public class Credentials {

	public static final String DEFAULT_ROLE = "DEFAULT";
	public static final String ADMIN_ROLE = "ADMIN";
	
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
	private String nome;
	private String password;
	private String ruolo;

	@OneToOne(cascade = CascadeType.ALL)
	private Cuoco Cuoco;
	
	public String getCuoconame() {
		return nome;
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Cuoco getCuoco() {
		return Cuoco;
	}

	public void setCuoco(Cuoco Cuoco) {
		this.Cuoco = Cuoco;
	}
	
	public void setCuoconame(String Cuoconame) {
		this.nome = Cuoconame;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getRole() {
		return ruolo;
	}
	
	public void setRole(String ruolo) {
		this.ruolo = ruolo;
	}

}
