package com.dojo.workspace.CTUni.models;

import java.sql.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "universidades")
public class Universidades {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotBlank(message=" Por favor ingresa un nombre")
	@Size(min=3, max=30, message="Nombre debe ser mayor a 3 caracteres y menor a 30")
	private String universidadName;
	
	@Min(value = 1, message = "Debe seleccionar rating")
	@Max(value=5)
	private int ranking;
	
	@NotBlank(message=" Por favor ingresa un apellido")
	@Size(min=3, max=30, message="Apellido debe ser mayor a 3 caracteres y menor a 30")
	private String publicOrPrivate;
	
	@NotBlank(message=" Por favor ingresa un apellido")
	@Size(min=3, max=30, message="Apellido debe ser mayor a 3 caracteres y menor a 30")
	private String otroAtributo;
	
	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;
	
	public Universidades() {

	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
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
	public String getOtroAtributo() {
		return otroAtributo;
	}
	public void setOtroAtributo(String otroAtributo) {
		this.otroAtributo = otroAtributo;
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