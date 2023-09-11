package com.dojo.workspace.CTUni.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.dojo.workspace.CTUni.models.Comentarios;

public interface comentariorepo extends CrudRepository<Comentarios, Long>{

	@Query(value="SELECT COUNT(*) FROM comentarios WHERE user_id = :userid", nativeQuery=true)
	Long restriccioncomentario(Long userid);
}