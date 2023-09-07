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
@Table(name = "carreras")
public class Carreras {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotBlank(message=" Por favor ingresa un nombre")
	@Size(min=3, max=30, message="Nombre debe ser mayor a 3 caracteres y menor a 30")
	private String carreraName;
	
	@Min(value = 1, message = "Debe seleccionar rating")
	@Max(value=5)
	private Integer numeroDeIngresantes;
	
	@NotBlank(message=" Por favor ingresa un apellido")
	@Size(min=3, max=30, message="Apellido debe ser mayor a 3 caracteres y menor a 30")
	private String duracion;
	
	@NotBlank(message=" Por favor ingresa un apellido")
	@Size(min=3, max=30, message="Apellido debe ser mayor a 3 caracteres y menor a 30")
	private Boolean salidaLaboral;//bueno,medio,poco requerido
	
	private Double costo;
	
	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;
	
	public Carreras() {

	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCarreraName() {
		return carreraName;
	}

	public void setCarreraName(String carreraName) {
		this.carreraName = carreraName;
	}

	public Integer getNumeroDeIngresantes() {
		return numeroDeIngresantes;
	}

	public void setNumeroDeIngresantes(Integer numeroDeIngresantes) {
		this.numeroDeIngresantes = numeroDeIngresantes;
	}

	public String getDuracion() {
		return duracion;
	}

	public void setDuracion(String duracion) {
		this.duracion = duracion;
	}

	public Boolean getSalidaLaboral() {
		return salidaLaboral;
	}

	public void setSalidaLaboral(Boolean salidaLaboral) {
		this.salidaLaboral = salidaLaboral;
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

	public Double getCosto() {
		return costo;
	}

	public void setCosto(Double costo) {
		this.costo = costo;
	}
	
}
