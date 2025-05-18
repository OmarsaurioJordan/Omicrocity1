//id
with(argument0){
    switch(estado){
        case "deambulando":
        case "protesta":
            mobile = true;
            break;
        
        case "libre":
        case "foto":
        case "globito":
        case "sombrilla":
        case "preso":
            s_grafo(id);
            break;
        
        case "bombaso":
            s_grafo(id);
            if(s_densidad(x, y, false) > 4 and alarm[1] > 5){
                alarm[1] = 1;
            }
            break;
        
        case "globo":
            s_grafo(id);
            var otrocoso;
            otrocoso = collision_circle(x, y, 16, o_joven, 1, 1);
            if(otrocoso){
                if(otrocoso.estado != "globito"){
                    s_actividades(otrocoso, "globito");
                }
            }
            break;
        
        case "compra":
            if(place_meeting(mx, my, o_comercio)){
                if(point_distance(x, y, mx, my) > vision){
                    mp_potential_step_object(mx, my, 0, bloques);
                    speed = carrera;
                }
                else{
                    mobile = true;
                }
            }
            else{
                s_actividades(id, "libre");
            }
            break;
        
        case "balon":
            if(place_meeting(mx, my, o_coliseo)){
                if(point_distance(x, y, mx, my) > vision){
                    mp_potential_step_object(mx, my, 0, bloques);
                    speed = carrera;
                }
                else{
                    mobile = true;
                }
            }
            else{
                s_actividades(id, "libre");
            }
            break;
        
        case "toca":
            if(place_meeting(mx, my, o_teatro)){
                if(point_distance(x, y, mx, my) > vision){
                    mp_potential_step_object(mx, my, 0, bloques);
                    speed = carrera;
                }
                else{
                    mobile = true;
                }
            }
            else{
                s_actividades(id, "libre");
            }
            break;
        
        case "baila":
            if(place_meeting(mx, my, o_casino)){
                if(point_distance(x, y, mx, my) > vision){
                    mp_potential_step_object(mx, my, 0, bloques);
                    speed = carrera;
                }
                else{
                    mobile = true;
                }
            }
            else{
                s_actividades(id, "libre");
            }
            break;
        
        case "aplaude":
            if(s_confirma(meta, o_musico)){
                if(meta.estado == "trabajo"){
                    if(point_distance(x, y, meta.x, meta.y) > cercano * 2){
                        mp_potential_step_object(meta.x, meta.y, 0, bloques);
                        speed = carrera;
                    }
                    else if(point_distance(x, y, meta.x, meta.y) < cercano){
                        direction = point_direction(meta.x, meta.y, x, y);
                        speed = carrera;
                    }
                    else{
                        speed = 0;
                    }
                }
                else{
                    s_actividades(id, "libre");
                }
            }
            else{
                s_actividades(id, "libre");
            }
            break;
        
        case "celebra":
            if(s_confirma(meta, o_deportista)){
                if(meta.estado == "trabajo"){
                    if(point_distance(x, y, meta.x, meta.y) > cercano * 2){
                        mp_potential_step_object(meta.x, meta.y, 0, bloques);
                        speed = carrera;
                    }
                    else if(point_distance(x, y, meta.x, meta.y) < cercano){
                        direction = point_direction(meta.x, meta.y, x, y);
                        speed = carrera;
                    }
                    else{
                        speed = 0;
                    }
                }
                else{
                    s_actividades(id, "libre");
                }
            }
            else{
                s_actividades(id, "libre");
            }
            break;
        
        case "mantram":
            if(s_confirma(meta, o_brujo)){
                if(meta.estado == "trabajo"){
                    if(point_distance(x, y, meta.x, meta.y) > cercano * 2){
                        mp_potential_step_object(meta.x, meta.y, 0, bloques);
                        speed = carrera;
                    }
                    else if(point_distance(x, y, meta.x, meta.y) < cercano){
                        direction = point_direction(meta.x, meta.y, x, y);
                        speed = carrera;
                    }
                    else{
                        speed = 0;
                    }
                }
                else{
                    s_actividades(id, "libre");
                }
            }
            else{
                s_actividades(id, "libre");
            }
            break;
        
        case "habla":
        case "love":
        case "pelea":
            if(s_confirma(meta, ciudadano)){
                if(meta.estado == estado){
                    if(point_distance(x, y, meta.x, meta.y) > cercano){
                        mp_potential_step_object(meta.x, meta.y, 0, bloques);
                        speed = carrera;
                    }
                    else{
                        speed = 0;
                    }
                }
                else{
                    s_actividades(id, "libre");
                }
            }
            else{
                s_actividades(id, "libre");
            }
            break;
        
        case "celular":
            if(s_confirma(meta, ciudadano)){
                if(meta.estado == estado){
                    s_grafo(id);
                }
                else{
                    s_actividades(id, "libre");
                }
            }
            else{
                s_actividades(id, "libre");
            }
            break;
        
        case "casa":
            if(s_confirma(raiz, viviendas)){
                if(point_distance(x, y, raiz.x, raiz.y) > vision){
                    mp_potential_step_object(raiz.x, raiz.y, 0, bloques);
                    speed = carrera;
                }
                else{
                    s_impuestos(id);
                    s_actividades(id, "duerme");
                }
            }
            else{
                s_actividades(id, "libre");
            }
            break;
        
        case "encaleta":
            if(s_confirma(raiz, bloques)){
                if(point_distance(x, y, raiz.x, raiz.y) > vision){
                    mp_potential_step_object(raiz.x, raiz.y, 0, bloques);
                    speed = carrera;
                }
                else{
                    if(object_index == o_ladron){
                        s_plata(-2);
                        audio_play_sound_at(a_encaletaladron, x, y, 0, m_noido, m_oido, 1, false, 5);
                    }
                    else{
                        audio_play_sound_at(a_encaletaciudadano, x, y, 0, m_noido, m_oido, 1, false, 4);
                    }
                    s_actividades(id, "libre");
                }
            }
            else{
                s_actividades(id, "libre");
            }
            break;
        
        case "sigueme":
            if(instance_exists(o_player)){
                if(o_player.activo){
                    if(point_distance(x, y, o_player.x, o_player.y) > cercano * 2){
                        mp_potential_step_object(o_player.x, o_player.y, 0, bloques);
                        speed = carrera;
                    }
                    else if(point_distance(x, y, o_player.x, o_player.y) < cercano){
                        direction = point_direction(o_player.x, o_player.y, x, y);
                        speed = carrera;
                    }
                    else{
                        speed = 0;
                    }
                }
                else{
                    s_actividades(id, "libre");
                }
            }
            else{
                s_actividades(id, "libre");
            }
            break;
        
        case "manual":
            if(instance_exists(o_player)){
                if(o_player.activo){
                    if(point_distance(x, y, o_player.x, o_player.y) > cercano * 0.5){
                        mp_potential_step_object(o_player.x, o_player.y, 0, bloques);
                        speed = carrera * 1.5;
                    }
                    else{
                        speed = 0;
                    }
                }
                else{
                    s_actividades(id, "libre");
                }
            }
            else{
                s_actividades(id, "libre");
            }
            break;
        
        case "trabajo":
            if(s_confirma(raiz, bloques)){
                if(point_distance(x, y, raiz.x, raiz.y) > vision){
                    mp_potential_step_object(raiz.x, raiz.y, 0, bloques);
                    speed = carrera;
                }
                else{
                    mobile = 2;
                }
            }
            break;
        
        case "limpia":
            if(s_confirma(meta, o_basura)){
                if(point_distance(x, y, meta.x, meta.y) > cercano){
                    mp_potential_step_object(meta.x, meta.y, 0, bloques);
                    speed = carrera;
                }
                else{
                    audio_play_sound_at(a_escoba, x, y, 0, m_noido, m_oido, 1, false, 4);
                    with(meta){
                        if(clase != -1){
                            var fff;
                            fff = instance_create(x, y, o_regalo);
                            fff.alarm[0] = 2 * creaciontime;
                            if(vio){
                                fff.clase = 2;}
                            else{
                                fff.clase = 3;}
                        }
                        instance_destroy();
                    }
                }
            }
            else{
                s_actividades(id, "libre");
            }
            break;
        
        case "cura":
            if(s_confirma(meta, humano)){
                if(meta.virus > 0){
                    if(point_distance(x, y, meta.x, meta.y) > cercano){
                        mp_potential_step_object(meta.x, meta.y, 0, bloques);
                        speed = carrera * 1.25;
                    }
                    else{
                        meta.virus = 0;
                    }
                }
                else{
                    s_actividades(id, "libre");
                }
            }
            else{
                s_actividades(id, "libre");
            }
            break;
        
        case "defiende":
            if(s_confirma(meta, humano)){
                if(meta.estado != "preso"){
                    if(point_distance(x, y, meta.x, meta.y) > cercano){
                        mp_potential_step_object(meta.x, meta.y, 0, bloques);
                        speed = carrera;
                    }
                    else{
                        speed = 0;
                        if(irandom(6) == 0){//probabilidad golpes
                            if(irandom(3) == 0){//probabilidad muere poli
                                s_matar(id, true);
                            }
                            else{
                                s_matar(meta, true);
                            }
                        }
                        else{
                            s_actividades(meta, "preso");
                            s_actividades(id, "libre");
                        }
                    }
                }
                else{
                    s_actividades(id, "libre");
                }
            }
            else if(s_confirma(meta, monstruo)){
                if(point_distance(x, y, meta.x, meta.y) > cercano){
                    mp_potential_step_object(meta.x, meta.y, 0, bloques);
                    speed = carrera;
                }
                else{
                    speed = 0;
                    if(meta.object_index == o_bomba){
                        if(meta.contador > 0){
                            if(irandom(3) == 0){//probabilidad desactivar bomba
                                with(meta){
                                    instance_destroy();
                                }
                            }
                            else{
                                meta.contador = 0;
                                meta.alarm[0] = 1;
                            }
                        }
                        else{
                            s_actividades(id, "libre");
                        }
                    }
                    else if(brazo == 0){
                            if(meta.object_index == o_prehistorico){
                                if(irandom(5) == 0){//probabilidad matar prehistorico
                                    s_matar(meta, true);
                                    if(!instance_exists(o_heroe) or irandom(2) == 0){
                                        instance_create(x, y, o_heroe);
                                        instance_destroy();
                                    }
                                }
                                else{
                                    s_matar(id, true);
                                }
                            }
                            else{
                                s_matar(meta, true);
                            }
                    }
                }
            }
            else{
                s_actividades(id, "libre");
            }
            break;
        
        case "asecha":
            if(s_confirma(meta, ciudadano)){
                if(meta.estado == "compra" or meta.estado == "foto" or meta.estado == "balon" or
                        meta.estado == "toca" or meta.estado == "celular" or meta.estado == "encaleta"){
                    if(point_distance(x, y, meta.x, meta.y) > cercano){
                        mp_potential_step_object(meta.x, meta.y, 0, bloques);
                        speed = carrera;
                    }
                    else{
                        if(irandom(7) == 0){//probabilidad matar
                            s_matar(meta, true);
                        }
                        else{
                            meta.meta = id;
                            audio_play_sound_at(a_robado, x, y, 0, m_noido, m_oido, 1, false, 7);
                            s_actividades(meta, "panico");
                        }
                        s_actividades(id, "encaleta");
                    }
                }
                else{
                    s_actividades(id, "libre");
                }
            }
            else{
                s_actividades(id, "libre");
            }
            break;
        
        case "hulle":
            if(s_confirma(meta, o_policia)){
                if(point_distance(meta.x, meta.y, x, y) < vision * 2){
                    direction = point_direction(meta.x, meta.y, x, y);
                    speed = carrera * 0.75;
                }
                else{
                    s_actividades(id, "libre");
                }
            }
            else{
                s_actividades(id, "libre");
            }
            break;
        
        case "panico":
            if(s_confirma(meta, movil)){
                if(point_distance(meta.x, meta.y, x, y) < vision){
                    alarm[1] = -1;
                    direction = point_direction(meta.x, meta.y, x, y);
                    speed = carrera * 0.75;
                }
                else if(alarm[1] == -1){
                    alarm[1] = actividades[23];
                }
            }
            else if(alarm[1] == -1){
                alarm[1] = actividades[23];
            }
            break;
        
        case "lameta":
            if(point_distance(x, y, mx, my) > cercano){
                mp_potential_step_object(mx, my, 0, bloques);
                speed = carrera * 1.1;
            }
            else{
                s_actividades(id, "libre");
            }
        break;
        
        case "come":
        case "agua":
        case "duerme":
        case "pesas":
        case "hebrio":
        case "vuela":
        case "lee":
            speed = 0;
        break;
    }
}
