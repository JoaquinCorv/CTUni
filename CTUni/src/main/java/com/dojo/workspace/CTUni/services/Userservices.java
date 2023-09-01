package com.dojo.workspace.CTUni.services;

import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.dojo.workspace.CTUni.models.Usuario;
import com.dojo.workspace.CTUni.repositories.userRepo;

@Service
public class Userservices {

	private final userRepo userRepo;
	public Userservices(userRepo uRe) {
		this.userRepo = uRe;
	}


	public Usuario encontrarPorEmail(String email) {
		return userRepo.findByEmail(email);
	}
	
	public Usuario encontrarUserPorId(Long id) {
		Optional<Usuario> user = userRepo.findById(id);
		if(user.isPresent()) {
			return user.get();
		}
		return null;
	}


	public Usuario registroUsuario(Usuario user, BindingResult resultado) {

		Usuario usuarioRegistrado = userRepo.findByEmail(user.getEmail());

		if (usuarioRegistrado != null) {
			resultado.rejectValue("email", "Matches", "Correo electronico ya existe");
		}
		if (!user.getPassword().equals(user.getPasswordConfirmation())) {
			resultado.rejectValue("password", "Matches", "Password no coincide");
		}
		if (resultado.hasErrors()) {
			return null;
		}
		String hashed = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
		user.setPassword(hashed);
		return userRepo.save(user);

	}


	public boolean authenthicateUser(String email, String password, BindingResult resultado) {

		Usuario usuarioRegistrado = userRepo.findByEmail(email);

		if (usuarioRegistrado == null) {
			resultado.rejectValue("email", "Matches", "Email no valido");
			return false;
		} else {
			if (BCrypt.checkpw(password, usuarioRegistrado.getPassword())) {
				return true;
			} else {
				resultado.rejectValue("password", "Matches", "Password no valido");
				return false;
			}
		}
	}

}