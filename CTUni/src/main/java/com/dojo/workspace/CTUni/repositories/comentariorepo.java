package com.dojo.workspace.CTUni.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.dojo.workspace.CTUni.models.Comentarios;
import com.dojo.workspace.CTUni.models.Universidades;

public interface comentariorepo extends CrudRepository<Comentarios, Long>{

	List<Comentarios> findAll();
	
	@Query(value="SELECT COUNT(*) FROM comentarios WHERE user_id = :userid ", nativeQuery=true)
	Long restriccioncomentario(Long userid);
}