package com.dojo.workspace.CTUni.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Usuario {
//	@Id
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
//	@NotBlank(message=" Por favor ingresa un nombre")
//	@Size(min=3, max=30, message="Nombre debe ser mayor a 3 caracteres y menor a 30")
	private String nombre;
	
//	@NotBlank(message=" Por favor ingresa un apellido")
//	@Size(min=3, max=30, message="Apellido debe ser mayor a 3 caracteres y menor a 30")
	private String apellido;
	
//	@NotBlank(message=" Por favor ingresa un correo electronico")
//	@Email(message="El correo ingresado no es correcto")
	private String email;
	
//	@NotBlank(message="Por favor, ingresa el password")
//	@Size(min=8, max=64, message= "Password debe contener minimo 8 caracteres")
	private String password;
	
//	@Transient
//	@NotBlank(message="Por favor confirma la contrasenia")
//	@Size(min=8, message= "Password debe contener minimo 8 caracteres")
	private String passwordConfirmation;

}
