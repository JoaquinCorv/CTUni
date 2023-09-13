package com.dojo.workspace.CTUni.models;

import java.sql.Date;
import java.util.List;


import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.DecimalMax;
import jakarta.validation.constraints.DecimalMin;

@Entity
@Table(name = "universidades")
public class Universidades {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(columnDefinition = "CHAR(90)")
	private String universidadName;
	
	private int ranking;
	
	@DecimalMin("1.0")
	@DecimalMax("5.0")
	private Double rating ;
	
	
	@Column(columnDefinition = "CHAR(90)")
	private String publicOrPrivate;
	
	@Column(columnDefinition = "CHAR(90)")
	private String localidad;
	
	@Column(columnDefinition = "CHAR(90)")
	private String direccion;
	
	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;
	


	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(
      name = "sedes", 
      joinColumns = @JoinColumn(name = "universidades_id"), 
      inverseJoinColumns = @JoinColumn(name = "carreras_id")
  )
	private List<Carreras> carrerasConSedes;
	
	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "guardados", 
	joinColumns = @JoinColumn(name = "universidades_id"), 
	inverseJoinColumns = @JoinColumn(name = "user_id"))
	private List<Usuario> guardaruni;
	
	

	 @OneToMany(mappedBy = "universidad", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	    private List<Sedes> sedes;

	public Universidades() {
	}
	
	
	
	
	public List<Carreras> getCarrerasConSedes() {
		return carrerasConSedes;
	}




	public void setCarrerasConSedes(List<Carreras> carrerasConSedes) {
		this.carrerasConSedes = carrerasConSedes;
	}




	public List<Usuario> getGuardaruni() {
		return guardaruni;
	}




	public void setGuardaruni(List<Usuario> guardaruni) {
		this.guardaruni = guardaruni;
	}




	public Double getRating() {
		return rating;
	}
	public void setRating(Double rating) {
		this.rating = rating;
	}
	
	public List<Sedes> getSedes() {
		return sedes;
	}

	public void setSedes(List<Sedes> sedes) {
		this.sedes = sedes;
	}

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getUniversidadName() {
		return universidadName;
	}
	public void setUniversidadName(String universidadName) {
		this.universidadName = universidadName;
	}
	public int getRanking() {
		return ranking;
	}
	public void setRanking(int ranking) {
		this.ranking = ranking;
	}
	
	public String getLocalidad() {
		return localidad;
	}
	public void setLocalidad(String localidad) {
		this.localidad = localidad;
	}
	public String getPublicOrPrivate() {
		return publicOrPrivate;
	}
	public void setPublicOrPrivate(String publicOrPrivate) {
		this.publicOrPrivate = publicOrPrivate;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
}
