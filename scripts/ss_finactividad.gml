//id
var respuesta;
respuesta = true;
with(argument0){
    switch(estado){
        case "love":
            if(s_confirma(meta, ciudadano)){
                if(meta.estado == estado){
                    var dd, ll, hj;
                    dd = point_direction(x, y, meta.x, meta.y);
                    ll = point_distance(x, y, meta.x, meta.y) * 0.5;
                    hj = instance_create(x + lengthdir_x(ll, dd), y + lengthdir_y(ll, dd), o_joven);
                    if(irandom(99) == 0){//probabilidad gemelo
                        instance_create(x + lengthdir_x(ll, dd), y + lengthdir_y(ll, dd), o_joven);
                    }
                    s_logrado(17);
                    s_actividades(meta, "libre");
                    s_actividades(id, "libre");
                    audio_play_sound_at(a_nace, hj.x, hj.y, 0, m_noido, m_oido, 1, false, 6);
                    respuesta = false;}}
        break;
        case "pelea":
            if(s_confirma(meta, ciudadano)){
                if(meta.estado == estado and irandom(39) == 0){
                    var i, aux;
                    for(i = 0; i < totalescosas[0]; i++){
                        aux = instance_find(ciudadano, i);
                        if s_confirma(aux,-1){
                            if(aux.estado == "libre" and
                            point_distance(x, y, aux.x, aux.y) < vision){
                                aux.meta = id;
                                if(irandom(2) == 0){
                                    audio_play_sound_at(a_hulle, aux.x, aux.y, 0, m_noido, m_oido, 1, false, 3);}
                                s_actividades(aux, "panico");}}
                    }
                    s_matar(meta, true);
                    s_actividades(id, "libre");
                    respuesta = false;
                }
            }
        break;
        case "vuela":
            if(s_confirma(meta, o_volador)){
                x = meta.x;
                y = meta.y;
                with(meta){
                    instance_destroy();
                }
                s_actividades(id, "libre");
            }
            else{
                instance_destroy();
            }
            respuesta = false;
        break;
        case "compra":
            s_actividades(id, "encaleta");
            respuesta = false;
        break;
        case "bombaso":
            instance_create(x, y, o_bomba);
            audio_play_sound_at(a_ponebomba,x, y, 0, m_noido, m_oido, 1, false, 16);
            if(tabla[24,6] == 0){
                s_notificacion(20, "");
            }
        break;
        case "duerme":
            if(object_index == o_turista){
                raiz = -1;
            }
        break;
        case "protesta":
            if(irandom(19) == 0){
                respuesta = false;
                s_matar(id, false);
            }
        break;
    }
}
return(respuesta);
