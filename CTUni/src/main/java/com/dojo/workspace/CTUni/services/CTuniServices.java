package com.dojo.workspace.CTUni.services;

import com.dojo.workspace.CTUni.repositories.CTunirepo;
import com.dojo.workspace.CTUni.repositories.userRepo;

import org.springframework.stereotype.Service;

import com.dojo.workspace.CTUni.models.Universidades;

@Service
public class CTuniServices {
    private final CTunirepo CTunirepo;
    private final userRepo userRepo;

    public CTuniServices(CTunirepo CTunirepo, userRepo userRepo) {
        this.CTunirepo = CTunirepo;
        this.userRepo = userRepo;
}
    public Universidades obtenerUniversidadesPorId(Long idUniversidades) {
        return CTunirepo.findById(idUniversidades).orElse(null);
    }
    
    public boolean UniversidadesExiste(String Universidades) {
        return CTunirepo.existsByUniversidadName(Universidades);
    }
    
    public void guardarRating(Universidades rating) {
    	CTunirepo.save(rating);
    }
    
	public Universidades actualizarUniversidad(Universidades Universidades) {
		return CTunirepo.save(Universidades);
	}
    
	public Double obtenerPromedio(Long id) {
		return CTunirepo.obtenerPromedioRatings(id).orElse(null);
	}
    
    
}

