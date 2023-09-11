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
    private final CTunirepo CTunirepo;
    
    
    public CommentService(comentariorepo cRe, CTunirepo CTunirepo) {
        this.CTunirepo= CTunirepo;
    	this.comentariorepo = cRe;
    }

    public Comentarios agregarComentario(Comentarios comentario) {
        return comentariorepo.save(comentario);
    }

    public Long restriccioncomentario(Long userid) {
    	
    	
    	return comentariorepo.restriccioncomentario(userid);
    }
    
}
