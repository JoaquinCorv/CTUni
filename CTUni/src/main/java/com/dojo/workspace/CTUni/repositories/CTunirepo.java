package com.dojo.workspace.CTUni.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.dojo.workspace.CTUni.models.Carreras;
import com.dojo.workspace.CTUni.models.Universidades;


@Repository
public interface CTunirepo extends CrudRepository<Universidades, Long> {
	
	List<Universidades> findAll();
	
	
	List<Universidades> findByUniversidadName(String universidadName);
	boolean existsByUniversidadName(String universidadName);
	
	@Query(value="SELECT AVG(rating) FROM comentarios \r\n"
			+ "WHERE Universidades_id= :iduniversidadName", nativeQuery=true)
	Optional<Double> obtenerPromedioRatings(Long iduniversidadName);
	
	@Query(value="SELECT COUNT(*) FROM guardados WHERE user_id = :userid", nativeQuery=true)
	Long restriccionguardados(Long userid);
}

