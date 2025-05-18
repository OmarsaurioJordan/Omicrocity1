//id
with(argument0){
    if(s_buscador(id, o_zombie)){
        if(s_buscador(id, o_mecanoide)){
            if(s_buscador(id, o_invasor)){
                if(s_buscador(id, o_policia)){
                    if(instance_exists(humano)){
                        meta = instance_nearest(x, y, humano);
                        if(meta.object_index == o_futurista){
                            meta = -1;}
                        else if(!( object_is_ancestor(meta.object_index, ciudadano) or
                                meta.object_index == o_terrorista or
                                meta.object_index == o_ladron) ){
                            meta = -1;}
                    }
                }
            }
        }
    }
    if(estado == "libre"){
        if(s_confirma(raiz, o_ovni)){
            if(raiz.limimuertes == 0){
                estado = "retirada";
            }
        }
        if(s_confirma(meta, -1)){
            if(point_distance(x, y, meta.x, meta.y) < vision){
                if(point_distance(x, y, meta.x, meta.y) > cercano){
                    mp_potential_step_object(meta.x, meta.y, 0, bloques);
                    speed = carrera;
                }
                else if(brazo == 0){
                    instance_create(meta.x, meta.y, ceniza);
                    with(meta){
                        instance_destroy();
                    }
                }
            }
            else{
                meta = -1;
            }
        }
        else{
            if(clase == 0){
                mobile = true;
            }
            else{
                if(point_distance(x, y, mx, my) > cercano){
                    mp_potential_step_object(mx, my, 0, bloques);
                    speed = carrera;}
                else{
                    s_camino(id);
                }
            }
        }
    }
    else{
        if(s_confirma(meta, -1)){
            if(point_distance(x, y, meta.x, meta.y) < cercano and brazo == 0){
                instance_create(meta.x, meta.y, ceniza);
                with(meta){
                    instance_destroy();
                }
            }
        }
        if(s_confirma(raiz, o_ovni)){
            if(point_distance(x, y, raiz.x, raiz.y) > cercano){
                mp_potential_step_object(raiz.x, raiz.y, 0, bloques);
                speed = carrera;
            }
            else{
                mori = 1;
                raiz.unidades += 1;
                raiz.alarm[0] = 30;
                audio_play_sound_at(a_abduccion, raiz.x, raiz.y, 0, m_noido, m_oido, 1, false, 16);
                instance_destroy();
            }
        }
    }
}
