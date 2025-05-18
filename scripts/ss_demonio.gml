//id
with(argument0){
    var otro;
    if(instance_exists(humano)){
        otro = instance_nearest(x, y, humano);
        if(point_distance(otro.x, otro.y, x, y) < vision * 2){
            if(otro.estado != "duerme" and otro.estado != "manual"){
                s_actividades(otro, "duerme");
                otro.alarm[1] = creaciontime * 3;
            }
        }
    }
    if(instance_exists(o_invasor)){
        otro=instance_nearest(x, y, o_invasor);
        if(point_distance(otro.x, otro.y, x, y) < vision * 2){
            if(otro.estado != "duerme"){
                if(otro.estado == "concria"){
                    instance_create(otro.x, otro.y, o_joven);
                }
                otro.estado = "duerme";
                otro.alarm[1] = creaciontime * 4;
            }
        }
    }
    otro = collision_circle(x, y, cercano * 2, o_viejo, 1, 1);
    if(otro){
        var hj;
        hj = instance_create(otro.x, otro.y, o_joven);
        audio_play_sound_at(a_nace, hj.x, hj.y, 0, m_noido, m_oido, 1, false, 6);
        with(otro){
            instance_destroy();
        }
    }
    otro = collision_circle(x, y, vision, o_basura, 1, 1);
    if(otro){
        if(otro.clase > -1){
            if(otro.clase != 34 and otro.clase != 38 and otro.clase != 40 and
                    otro.clase != 35 and otro.clase != 39){
                instance_create(otro.x, otro.y, o_fantasma);
                with(otro){
                    instance_destroy();
                }
            }
        }
    }
    if(clase == 0){
        s_grafo(id);
    }
    else{
        if(point_distance(x, y, mx, my) > cercano){
            mp_potential_step_object(mx, my, 0, bloques);
            speed = carrera;
        }
        else{
            s_camino(id);
        }
    }
}
