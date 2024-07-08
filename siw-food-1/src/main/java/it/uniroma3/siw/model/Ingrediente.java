package it.uniroma3.siw.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.validation.constraints.NotBlank;

@Entity
public class Ingrediente {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@NotBlank(message = "{ingrediente.nome.notblank}")
	private String nome;

	@OneToMany(mappedBy = "ingrediente", cascade = CascadeType.ALL)
	private List<RicettaIngrediente> ricetteIngredienti = new ArrayList<>();

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

	public List<RicettaIngrediente> getRicetteIngredienti() {
		return ricetteIngredienti;
	}

	public void setRicetteIngredienti(List<RicettaIngrediente> ricetteIngredienti) {
		this.ricetteIngredienti = ricetteIngredienti;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id, nome, ricetteIngredienti);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Ingrediente other = (Ingrediente) obj;
		return Objects.equals(id, other.id) && Objects.equals(nome, other.nome)
				&& Objects.equals(ricetteIngredienti, other.ricetteIngredienti);
	}

}
