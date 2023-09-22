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

@Entity
@Table(name = "carreras")
public class Carreras {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(columnDefinition = "CHAR(90)")
	private String carreraName;
	
	@Column(columnDefinition = "CHAR(90)")
	private String duracion;
	
	@Column(columnDefinition = "TEXT")
	private String planDeEstudio;
	
	@Column(columnDefinition = "CHAR(90)")
	private String tipo;
	
	@Column(columnDefinition = "CHAR(90)")
	private String costo;
	
	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;
	
	@ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "sedes_Con_Categorias", 
        joinColumns = @JoinColumn(name = "carrera_id"), 
        inverseJoinColumns = @JoinColumn(name = "sedes_id")
    )
    private List<Sedes> sedes;
	
//	@ManyToOne(fetch = FetchType.LAZY)
//	@JoinColumn(name = "carreras_id")
//	private List<Sedes> carreras;
	
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

	public List<Sedes> getSedes() {
		return sedes;
	}

	public void setSedes(List<Sedes> sedes) {
		this.sedes = sedes;
	}

	public String getCosto() {
		return costo;
	}

	public void setCosto(String costo) {
		this.costo = costo;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getCarreraName() {
		return carreraName;
	}

	public void setCarreraName(String carreraName) {
		this.carreraName = carreraName;
	}
	
	public String getDuracion() {
		return duracion;
	}

	public void setDuracion(String duracion) {
		this.duracion = duracion;
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
