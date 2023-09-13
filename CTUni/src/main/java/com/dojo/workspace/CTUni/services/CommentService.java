package com.dojo.workspace.CTUni.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.dojo.workspace.CTUni.models.Comentarios;
import com.dojo.workspace.CTUni.repositories.comentariorepo;
import com.dojo.workspace.CTUni.repositories.CTunirepo;

@Service
public class CommentService {

    private final comentariorepo comentariorepo;
   
    
    
    public CommentService(comentariorepo cRe) {
        
    	this.comentariorepo = cRe;
    }

    public Comentarios agregarComentario(Comentarios comentario) {
        return comentariorepo.save(comentario);
    }

    public List<Comentarios> obtenerTodasLasUniversidades() {
        return comentariorepo.findAll();
    }
    
    public Long restriccioncomentario(Long userid) {
    	
    	
    	return comentariorepo.restriccioncomentario(userid);
    }
    
}
