package com.dojo.workspace.CTUni.models;

import java.sql.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
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
	
	//creo que voy a sacar esto de la salida laboraL, buen concepto pero muy subjeivo
	@NotBlank(message=" Por favor ingresa un apellido")
	@Size(min=3, max=30, message="Apellido debe ser mayor a 3 caracteres y menor a 30")
	private Boolean salidaLaboral;//bueno,medio,poco requerido
	
	@Column(columnDefinition = "TEXT")
	private String planDeEstudio;
	
	private Double costo;
	
	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;
	
//	@OneToMany(mappedBy="question", fetch = FetchType.LAZY)
//    private List<Answer> answer;

	@ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "carrera_especifica", 
        joinColumns = @JoinColumn(name = "universidades_id"), 
        inverseJoinColumns = @JoinColumn(name = "carreras_id")
    )     
    private List<Universidades> universidades;
	public Carreras() {

	}

	
	public String getPlanDeEstudio() {
		return planDeEstudio;
	}


	public void setPlanDeEstudio(String planDeEstudio) {
		this.planDeEstudio = planDeEstudio;
	}


	public Long getId() {
		return id;
	}

	public List<Universidades> getUniversidades() {
		return universidades;
	}

	public void setUniversidades(List<Universidades> universidades) {
		this.universidades = universidades;
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
