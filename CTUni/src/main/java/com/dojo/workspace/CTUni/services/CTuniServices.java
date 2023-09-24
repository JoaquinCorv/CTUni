package com.dojo.workspace.CTUni.services;

import com.dojo.workspace.CTUni.repositories.CTunirepo;
import com.dojo.workspace.CTUni.repositories.userRepo;
import com.dojo.workspace.CTUni.repositories.Carrerasrepo;
import com.dojo.workspace.CTUni.repositories.Sedesrepo;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.dojo.workspace.CTUni.models.Carreras;
import com.dojo.workspace.CTUni.models.Sedes;
import com.dojo.workspace.CTUni.models.Universidades;
import com.dojo.workspace.CTUni.models.Usuario;

@Service
public class CTuniServices {
    private final CTunirepo CTunirepo;
    private final userRepo userRepo;
    private final Carrerasrepo Carrerasrepo;
    private final Sedesrepo Sedesrepo;

    public CTuniServices(CTunirepo CTunirepo, userRepo userRepo, Carrerasrepo Carrerasrepo, Sedesrepo Sedesrepo) {
        this.CTunirepo = CTunirepo;
        this.userRepo = userRepo;
        this.Carrerasrepo = Carrerasrepo;
        this.Sedesrepo = Sedesrepo;
}
    public List<Carreras> obtenerTodasLasCarreras() {
        return Carrerasrepo.findAll();
    }
    public Carreras obtenerCarrerasPorId(Long idcarreras) {
        return Carrerasrepo.findById(idcarreras).orElse(null);
    }
    public Universidades obtenerUniversidadesPorId(Long iduniversidadName) {
        return CTunirepo.findById(iduniversidadName).orElse(null);
    }
    public List<Universidades> obtenerTodasLasUniversidades() {
        return CTunirepo.findAll();
    }
    public List<Sedes> obtenerTodasLasSedes() {
        return Sedesrepo.findAll();
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
    
	public Double obtenerPromedio(Long iduniversidadName) {
		return CTunirepo.obtenerPromedioRatings(iduniversidadName).orElse(null);
	}
    
	public Universidades unauni(Long iduniversidadName) {
		return CTunirepo.findById(iduniversidadName).orElse(null);
	}
	
	public void guardarDesguardarCarrera(Universidades Universidades, Usuario usuario, boolean asistencia) {
		if(asistencia) {
			Universidades.getGuardaruni().add(usuario);			
		}else {
			Universidades.getGuardaruni().remove(usuario);	
		}
		CTunirepo.save(Universidades);
	}
    public Long restriccionguardado(Long userid) {
    	
    	
    	return CTunirepo.restriccionguardados(userid);
    }	
}

