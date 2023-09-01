package com.dojo.workspace.CTUni.repositories;

import org.springframework.data.repository.CrudRepository;

import com.dojo.workspace.CTUni.models.Usuario;

public interface userRepo extends CrudRepository<Usuario, Long> {
	
	Usuario findByEmail(String email);
	

}