package com.dojo.workspace.CTUni.repositories;


import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.dojo.workspace.CTUni.models.Carreras;




@Repository
public interface Carrerasrepo extends CrudRepository<Carreras, Long> {
	
	@Query(value = "SELECT DISTINCT c.carrera_name FROM carreras c", nativeQuery = true)
	List<Object[]> carrerasSinRepetir();
	
//	@Query(value = "SELECT c.name,COUNT(ci.id) AS numerodeciudades "
//			+"FROM countries c "+
//			"LEFT JOIN cities ci ON c.code = ci.country_code "+
//			"group by c.name "+
//			"ORDER BY numerodeciudades DESC", nativeQuery = true)
//			List<Object[]> obtenerElNumeroDeCiudadesPorPais();
	
	List<Carreras> findAll();
	
}