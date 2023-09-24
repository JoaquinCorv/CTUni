package com.dojo.workspace.CTUni.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.dojo.workspace.CTUni.models.Sedes;




@Repository
public interface Sedesrepo extends CrudRepository<Sedes, Long> {
	
	
	
	List<Sedes> findAll();
	
}