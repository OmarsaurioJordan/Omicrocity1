//id
with(argument0){
    if(s_buscador(id, o_zombie)){
        if(s_buscador(id, o_alien)){
            if(s_buscador(id, o_invasor)){
                if(s_buscador(id, o_policia)){
                    if(instance_exists(humano)){
                        meta = instance_nearest(x, y, humano);
                        if(point_distance(x, y, meta.x, meta.y) > vision){
                            meta = -1;
                        }
                        if(!s_seleccionbot(meta)){
                            meta = -1;
                        }
                    }
                }
            }
        }
    }
    if(s_confirma(meta, -1)){
        if(point_distance(x, y, meta.x, meta.y) < vision){
            if(point_distance(x, y, meta.x, meta.y) > cercano){
                mp_potential_step_object(meta.x, meta.y, 0, bloques);
                speed = carrera;
            }
            else if(brazo == 0){
                s_matar(meta, true);
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
            if(point_distance(x,y,mx,my) > cercano){
                mp_potential_step_object(meta.x, meta.y, 0, bloques);
                speed = carrera;
            }
            else{
                s_camino(id);
            }
        }
    }
}
