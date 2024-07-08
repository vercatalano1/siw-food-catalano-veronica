package it.uniroma3.siw.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
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
	@NotBlank(message = "{ricetta.procedimento.notblank}")
	@Column(columnDefinition = "TEXT")
	private String procedimento;
	@NotBlank(message = "{ricetta.image.notblank}")
	private String image;
	
	@ManyToOne
	private Cuoco cuoco;
	@OneToMany(mappedBy = "ricetta", cascade = CascadeType.ALL)
	private List<RicettaIngrediente> ingredienti = new ArrayList<>();
	
	
	
	public List<RicettaIngrediente> getIngredienti() {
		return ingredienti;
	}
	public void setIngredienti(List<RicettaIngrediente> ingredienti) {
		this.ingredienti = ingredienti;
	}
	public String getProcedimento() {
		return procedimento;
	}
	public void setProcedimento(String procedimento) {
		this.procedimento = procedimento;
	}

	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	
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
