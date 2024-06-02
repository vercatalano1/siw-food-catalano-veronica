package it.uniroma3.siw.model;

import java.util.List;
import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.validation.constraints.NotBlank;

@Entity
public class Ricetta {
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
	@NotBlank(message = "{ricetta.nome.notblank}")
	private String nome;
	@NotBlank(message = "{ricetta.descrizione.notblank}")
	@Column(columnDefinition = "TEXT")
	private String descrizione;
	
	@ManyToOne
	private Cuoco cuoco;
	@ManyToMany
	private List<Ingrediente> ingredienti;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getDescrizione() {
		return descrizione;
	}
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	public Cuoco getCuoco() {
		return cuoco;
	}
	public void setCuoco(Cuoco cuochi) {
		this.cuoco = cuochi;
	}
	public List<Ingrediente> getIngredienti() {
		return ingredienti;
	}
	public void setIngredienti(List<Ingrediente> ingredienti) {
		this.ingredienti = ingredienti;
	}
	@Override
	public int hashCode() {
		return Objects.hash(cuoco, descrizione, id, ingredienti, nome);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Ricetta other = (Ricetta) obj;
		return Objects.equals(cuoco, other.cuoco) && Objects.equals(descrizione, other.descrizione)
				&& Objects.equals(id, other.id) && Objects.equals(ingredienti, other.ingredienti)
				&& Objects.equals(nome, other.nome);
	}
	

}
