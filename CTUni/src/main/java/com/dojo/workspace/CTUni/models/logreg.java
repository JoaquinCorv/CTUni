package com.dojo.workspace.CTUni.models;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

public class logreg {
	
	@NotBlank(message=" Por favor ingresa un correo electronico")
	@Email(message="El correo ingresado no es correcto")
	private String email;
	
	@NotBlank(message="Por favor, ingresa el password")
	@Size(min=8, max=64, message= "Password debe contener minimo 8 caracteres")
	private String password;
	
	public logreg() {
		
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	

}