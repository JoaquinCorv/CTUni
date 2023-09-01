package com.dojo.workspace.CTUni.repositories;

import org.springframework.data.repository.CrudRepository;

import com.julian.examen2.models.user;

public interface userRepo extends CrudRepository<user, Long> {
	
	user findByEmail(String email);
	

}