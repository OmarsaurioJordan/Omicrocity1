//id
with(argument0){
    if(s_buscador(id, o_invasor)){
        if(s_buscador(id, humano)){
            if(s_buscador(id, o_viejo)){
                s_buscador(id, o_joven);
            }
        }
        else if(meta.object_index == o_zombie){
            meta = -1;
        }
    }
    if(s_confirma(meta, -1)){
        if(point_distance(x, y, meta.x, meta.y) < vision){
            if(point_distance(x, y, meta.x, meta.y) > cercano){
                mp_potential_step_object(meta.x, meta.y, 0, bloques);
                speed = carrera;
            }
            else if(brazo == 0 and irandom(m_contagio * 2) == 0){
                if(meta.object_index == o_viejo or meta.object_index == o_joven){
                    s_matar(meta, true);
                }
                else{
                    instance_create(meta.x, meta.y, o_zombie);
                    with(meta){
                        instance_destroy();
                    }
                }
            }
        }
        else{
            meta = -1;
        }
    }
    else{
        mobile = true;
    }
}
