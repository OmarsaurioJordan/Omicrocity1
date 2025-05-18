//id
with(argument0){
    if(estado != "panico" and estado != "preso" and estado != "duerme"){
        var otrocoso;
        if(instance_exists(monstruo)){
            otrocoso = instance_nearest(x, y, monstruo);
            if(point_distance(x, y, otrocoso.x, otrocoso.y) < vision){
                if(!( otrocoso.object_index == o_bomba and object_is_ancestor(object_index, ciudadano) )){
                    meta = otrocoso;
                    if(irandom(2) == 0){
                        audio_play_sound_at(a_hulle, x, y, 0, m_noido, m_oido, 1, false, 3);}
                    s_actividades(id, "panico");
                }
            }
        }
    }
}
