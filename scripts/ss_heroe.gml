//id
with(argument0){
    if(s_superbuscador(id, o_zombie)){
        if(s_superbuscador(id, o_prehistorico)){
            if(s_superbuscador(id, o_alien)){
                if(s_superbuscador(id, o_mecanoide)){
                    if(s_superbuscador(id, o_bomba)){
                        if(s_superbuscador(id, o_terrorista)){
                            if(!s_superbuscador(id, o_ladron)){
                                if(meta.estado == "preso"){
                                    meta = -1;
                                }
                            }
                        }
                        else if(meta.estado == "preso"){
                            meta = -1;
                        }
                    }
                    else if(meta.contador < 2){
                        meta = -1;
                    }
                }
            }
        }
    }
    if(s_confirma(meta, -1)){
        if(point_distance(x, y, meta.x, meta.y) > cercano){
            mp_potential_step_object(meta.x, meta.y, 0, bloques);
            speed = carrera * 2;
        }
        else if(brazo == 0){
            if(meta.object_index == o_bomba){
                if(meta.contador > 0){
                    with(meta){
                        instance_destroy();
                    }
                }
                else{
                    meta = -1;
                }
            }
            else if(meta.object_index == o_terrorista or meta.object_index == o_ladron){
                if(irandom(6) == 0){
                    s_matar(meta, true);
                }
                else{
                    s_actividades(meta, "preso");
                }
            }
            else if(irandom(29) == 0){
                s_matar(id, true);
            }
            else{
                s_matar(meta, true);
            }
        }
    }
    else{
        s_grafo(id);
        if(speed > 0){
            speed = carrera * 2;
        }
    }
}
