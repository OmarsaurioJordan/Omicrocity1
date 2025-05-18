//id
with(argument0){
    if(estado != "duerme"){
        if(estado != "concria"){
            if(s_confirma(meta, -1)){
                if(point_distance(x, y, meta.x, meta.y) < cercano and brazo == 0){
                    s_matar(meta, true);
                }
            }
            if(s_buscador(id, o_zombie)){
                if(s_buscador(id, o_mecanoide)){
                    if(s_buscador(id, o_alien)){
                        if(s_buscador(id, o_policia)){
                            if(instance_exists(humano)){
                                meta = instance_nearest(x, y, humano);
                                if(object_is_ancestor(meta.object_index, ciudadano)){
                                    meta = -1;
                                }
                            }
                        }
                    }
                }
            }
        }
        if(s_confirma(raiz, o_pirata)){
            if(raiz.capturados == raiz.cantidad){
                if(estado == "concria"){
                    estado = "libre";
                    instance_create(x, y, o_joven);
                }
                else{
                    if(point_distance(x, y, raiz.x, raiz.y) > cercano){
                        mp_potential_step_object(raiz.x, raiz.y, 0, bloques);
                        speed = carrera;
                    }
                    else{
                        raiz.unidades += 1;
                        clase = 1;
                        instance_destroy();
                    }
                }
            }
            else if(estado == "concria"){
                if(point_distance(x, y, raiz.x, raiz.y) > cercano){
                    mp_potential_step_object(raiz.x, raiz.y, 0, bloques);
                    speed = carrera;
                }
                else{
                    raiz.capturados += 1;
                    estado = "libre";
                    s_plata(-3);
                }
            }
            else if(s_confirma(blanco, o_joven)){
                if(point_distance(x,y,blanco.x,blanco.y) < vision){
                    if(point_distance(x,y,blanco.x,blanco.y) > cercano){
                        mp_potential_step_object(blanco.x, blanco.y, 0, bloques);
                        speed = carrera;
                    }
                    else{
                        estado = "concria";
                        audio_play_sound_at(a_jovencapturado, x, y, 0, m_noido, m_oido, 1, false, 8);
                        with(blanco){
                            instance_destroy();
                        }
                    }
                }
                else{
                    blanco = -1;
                }
            }
            else{
                s_grafo(id);
                if(instance_exists(o_joven) and brazo == 0){
                    blanco = instance_nearest(x, y, o_joven);
                    if(point_distance(blanco.x, blanco.y, x, y) > vision){
                        blanco = -1;
                    }
                }
            }
        }
        else{
            s_grafo(id);
        }
    }
    else{
        speed = 0;
    }
}
