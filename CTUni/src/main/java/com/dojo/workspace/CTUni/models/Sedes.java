package com.dojo.workspace.CTUni.models;

import java.sql.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "sedes")
public class Sedes {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
	@Column(columnDefinition = "CHAR(90)")
	private String SedesName;
	
	@Column(columnDefinition = "CHAR(90)")
	private String localidad;
	
	@Column(columnDefinition = "CHAR(90)")
	private String direccion;
	
	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;
	
//	@ManyToMany(fetch = FetchType.LAZY)
//	@JoinTable(
//      name = "carrera_especifica", 
//      joinColumns = @JoinColumn(name = "universidades_id"), 
//      inverseJoinColumns = @JoinColumn(name = "carreras_id")
//  )
//  private List<Carreras> carreras;
	
	public Sedes() {

	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSedesName() {
		return SedesName;
	}

	public void setSedesName(String sedesName) {
		SedesName = sedesName;
	}

	public String getLocalidad() {
		return localidad;
	}

	public void setLocalidad(String localidad) {
		this.localidad = localidad;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
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