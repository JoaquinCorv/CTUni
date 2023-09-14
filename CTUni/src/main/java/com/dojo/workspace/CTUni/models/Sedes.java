package com.dojo.workspace.CTUni.models;

import java.sql.Date;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
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
	
	@Column(columnDefinition = "CHAR(90)")
	private String contactoGmail;
	
	@Column(columnDefinition = "CHAR(90)")
	private String contactoTelefono;
	
	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;
	
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "universidad_id")
    private Universidades universidad;
	
	@OneToMany(mappedBy = "carreras", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private List<Carreras> carreras;
	
	public Sedes() {

	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getContactoGmail() {
		return contactoGmail;
	}

	public void setContactoGmail(String contactoGmail) {
		this.contactoGmail = contactoGmail;
	}

	public String getContactoTelefono() {
		return contactoTelefono;
	}

	public void setContactoTelefono(String contactoTelefono) {
		this.contactoTelefono = contactoTelefono;
	}

	public Universidades getUniversidad() {
		return universidad;
	}

	public void setUniversidad(Universidades universidad) {
		this.universidad = universidad;
	}

	public List<Carreras> getCarreras() {
		return carreras;
	}

	public void setCarreras(List<Carreras> carreras) {
		this.carreras = carreras;
	}

	public Universidades getSedes() {
		return universidad;
	}

	public void setSedes(Universidades sedes) {
		this.universidad = sedes;
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
