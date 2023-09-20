package com.dojo.workspace.CTUni.repositories;


import java.util.List;



import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.dojo.workspace.CTUni.models.Carreras;




@Repository
public interface Carrerasrepo extends CrudRepository<Carreras, Long> {
	
	List<Carreras> findAll();
	
}