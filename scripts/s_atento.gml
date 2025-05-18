//id, actividad especifica
with(argument0){
    if(estado != argument1 and estado != "panico" and estado != "duerme"){
        switch(argument1){
            case "limpia":
                if(instance_exists(o_basura)){
                    var otrocoso;
                    otrocoso = instance_nearest(x, y, o_basura);
                    if(point_distance(x, y, otrocoso.x, otrocoso.y) < vision * 2){
                        meta = otrocoso;
                        s_actividades(id, argument1);
                    }
                }
                break;
            
            case "cura":
                var i, aux, mejor, nuevo;
                meta = -1;
                mejor = -1;
                for(i = 0; i < totalescosas[0]; i += 1){
                    aux = instance_find(humano, i);
                    if s_confirma(aux, -1){
                        if(aux != id and aux.virus == 2){
                            nuevo = point_distance(x, y, aux.x, aux.y);
                            if(nuevo < vision * 2 and (nuevo < mejor or mejor == -1)){
                                mejor = nuevo;
                                meta = aux;
                            }
                        }
                    }
                }
                if(meta == -1){
                    mejor = -1;
                    for(i = 0; i < totalescosas[0]; i += 1){
                        aux = instance_find(humano, i);
                        if s_confirma(aux, -1){
                            if(aux != id and aux.virus == 1){
                                nuevo = point_distance(x, y, aux.x, aux.y);
                                if(nuevo < vision * 2 and (nuevo < mejor or mejor == -1)){
                                    mejor = nuevo;
                                    meta = aux;
                                }
                            }
                        }
                    }
                }
                if(meta > -1){
                    s_actividades(id, argument1);
                }
                break;
            
            case "defiende":
                meta = -1;
                var otrocoso;
                if(instance_exists(monstruo)){
                    otrocoso = instance_nearest(x, y, monstruo);
                    if(point_distance(x, y, otrocoso.x, otrocoso.y) < vision * 3){
                        if(otrocoso.object_index == o_bomba){
                            if(otrocoso.contador > 0){
                                meta = otrocoso;
                                s_actividades(id, argument1);
                            }
                            else{
                                meta = -1;
                            }
                        }
                        else{
                            meta = otrocoso;
                            s_actividades(id, argument1);
                        }
                    }
                }
                if(meta == -1){
                    otrocoso = collision_circle(x, y, vision, o_terrorista, 1, 1);
                    if(otrocoso){
                        if(otrocoso.estado != "preso"){
                            meta = otrocoso;
                            audio_play_sound_at(a_guardiahey, x, y, 0, m_noido, m_oido, 1, false, 3);
                            s_actividades(id, argument1);
                        }
                    }
                }
                if(meta == -1){
                    otrocoso = collision_circle(x, y, vision, o_ladron, 1, 1);
                    if(otrocoso){
                        if(otrocoso.estado != "preso"){
                            meta = otrocoso;
                            audio_play_sound_at(a_guardiahey, x, y, 0, m_noido, m_oido, 1, false, 3);
                            s_actividades(id, argument1);
                        }
                    }
                }
                break;
        }
    }
}
