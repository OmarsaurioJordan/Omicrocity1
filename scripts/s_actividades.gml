//id, actividad (estado)
var aux, respuesta;
respuesta = false;

with(argument0){
    switch(argument1){
        case "libre":
            s_cambio(id, argument1, gv, gn, -1, 0, 0, actividades[23] + irandom(actividades[23]));
            respuesta = true;
            break;
        
        case "balon":
            aux = collision_circle(x, y, vision, o_coliseo, 1, 1);
            if(aux){
                if(aux.mienergia > 0){
                    s_cambio(id, argument1, -1, -1, -1, aux.x, aux.y, actividades[0]);
                    alarm[3] = 1;
                    respuesta = true;
                }
            }
            break;
        
        case "celebra":
            aux = s_profesionales(id, o_deportista);
            if(aux){
                s_cambio(id, argument1, -1, -1, aux, 0, 0, actividades[1]);
                alarm[3] = 1;
                s_plata(irandom(2));
                respuesta = true;
            }
            break;
        
        case "aplaude":
            aux = s_profesionales(id, o_musico);
            if(aux){
                s_cambio(id, argument1, -1, -1, aux, 0, 0, actividades[2]);
                alarm[3] = 1;
                s_plata(irandom(2));
                respuesta = true;
            }
            break;
        
        case "toca":
            aux = collision_circle(x, y, vision, o_teatro, 1, 1);
            if(aux){
                if(aux.mienergia > 0){
                    s_cambio(id, argument1, -1, -1, -1, aux.x, aux.y, actividades[3]);
                    alarm[3] = 1;
                    respuesta = true;
                }
            }
            break;
        
        case "lee":
            aux = collision_circle(x, y, vision, o_universidad, 1, 1);
            if(aux){
                if(aux.mienergia > 0){
                    s_cambio(id, argument1, -1, -1, -1, aux.x, aux.y, actividades[4]);
                    alarm[3] = 1;
                    s_plata(irandom(1));
                    respuesta = true;
                }
            }
            break;
        
        case "mantram":
            aux = s_profesionales(id, o_brujo);
            if(aux){
                s_cambio(id, argument1, -1, -1, aux, 0, 0, actividades[5]);
                alarm[3] = 1;
                s_plata(irandom(1));
                respuesta = true;
            }
            break;
        
        case "compra":
            aux = s_profesionales(id, o_vendedor);
            if(aux){
                if(s_confirma(aux.raiz, o_comercio)){
                    aux = aux.raiz;
                    if(aux.mienergia > 0 and aux.activo){
                        s_cambio(id, argument1, -1, -1, -1, aux.x, aux.y, actividades[6]);
                        respuesta = true;
                        audio_play_sound_at(a_plata, x, y, 0, m_noido, m_oido, 1, false, 5);
                        s_plata(1 + irandom(3));
                    }
                }
            }
            break;
        
        case "pesas":
            aux = collision_circle(x, y, vision, o_coliseo, 1, 1);
            if(aux){
                if(aux.mienergia > 0){
                    s_cambio(id, argument1, -1, -1, -1, aux.x, aux.y, actividades[7]);
                    alarm[3] = 1;
                    s_plata(irandom(1));
                    respuesta = true;
                }
            }
            break;
        
        case "globo":
            if(irandom(2) == 0){//probabilidad pasea globo
                aux = collision_circle(x, y, vision, o_parque, 1, 1);
                if(!aux){
                    aux = collision_circle(x, y, vision, o_dinoparque, 1, 1);
                }
                if(aux){
                    s_cambio(id, argument1, -1, -1, -1, aux.x, aux.y, actividades[8]);
                    audio_play_sound_at(a_globo, x, y, 0, m_noido, m_oido, 1, false, 5);
                    s_plata(1);
                    respuesta = true;
                }
            }
            break;
        
        case "globito":
            s_cambio(id, argument1, -1, -1, -1, 0, 0, actividades[8]);
            audio_play_sound_at(a_jovenglobo, x, y, 0, m_noido, m_oido, 1, false, 7);
            respuesta = true;
            break;
        
        case "sombrilla":
            s_cambio(id, argument1, -1, -1, -1, 0, 0, actividades[8]);
            respuesta = true;
            break;
        
        case "hebrio":
            aux = s_profesionales(id, o_cantinero);
            if(aux){
                s_cambio(id, argument1, -1, -1, -1, 0, 0, actividades[9]);
                audio_play_sound_at(a_hebrio, x, y, 0, m_noido, m_oido, 1, false, 6);
                s_plata(irandom(2));
                respuesta = true;
            }
            break;
        
        case "baila":
            aux = collision_circle(x, y, vision, o_casino, 1, 1);
            if(aux){
                if(aux.mienergia > 0){
                    s_cambio(id, argument1, -1, -1, -1, aux.x, aux.y, actividades[10]);
                    respuesta = true;
                }
            }
            break;
        
        case "love":
                if(virus == 0 and (irandom(reproduction) == 0 or object_index == o_nude)){
                    var i;
                    for(i = 0; i < instance_number(ciudadano); i += 1){
                        aux = instance_find(ciudadano, i);
                        if(point_distance(x, y, aux.x, aux.y) < vision and aux != id){
                            if(aux.estado == "libre"){
                                if(aux.virus == 0){
                                    s_cambio(id, argument1, -1, -1, aux, 0, 0, actividades[11]);
                                    s_cambio(aux, argument1, -1, -1, id, 0, 0, actividades[11] + 1);
                                    audio_play_sound_at(a_love, x, y, 0, m_noido, m_oido, 1, false, 4);
                                    respuesta = true;
                                    break;
                                }
                            }
                        }
                    }
                }
                break;
        
        case "agua":
            aux = collision_circle(x, y, vision * 3, o_restaurante, 1, 1);
            if(aux){
                if(aux.activo){
                    s_cambio(id, argument1, -1, -1, -1, aux.x, aux.y, actividades[12]);
                    audio_play_sound_at(a_tomagua, x, y, 0, m_noido, m_oido, 1, false, 6);
                    s_plata(irandom(1));
                    respuesta = true;
                }
            }
            break;
        
        case "pelea":
                if(irandom(9 + 3 * tabla[9,6]) < 9){
                    var i;
                    for(i = 0; i < instance_number(ciudadano); i += 1){
                        aux = instance_find(ciudadano, i);
                        if(point_distance(x, y, aux.x, aux.y) < vision and aux != id){
                            if(aux.estado == "libre"){
                                s_cambio(id, argument1, -1, -1, aux, 0, 0, actividades[14]);
                                s_cambio(aux, argument1, -1, -1, id, 0, 0, actividades[14]);
                                audio_play_sound_at(a_alega, x, y, 0, m_noido, m_oido, 1, false, 4);
                                respuesta = true; break;
                            }
                        }
                    }
                }
                break;
        
        case "trabajo":
            if(estado == "libre" and irandom(altrabajo) == 0){
                s_cambio(id, argument1, -1, -1, -1, 0, 0, actividades[15]);
                var yo;
                yo = id;
                with(ciudadano){
                    if(estado == "libre"){
                        if(point_distance(x, y, yo.x, yo.y) < vision){
                            switch(object_get_name(yo.object_index)){
                                case "o_deportista":
                                    s_actividades(id, "celebra"); break;
                                case "o_musico":
                                    s_actividades(id, "aplaude"); break;
                                case "o_brujo":
                                    s_actividades(id, "mantram"); break;
                                case "o_cantinero":
                                    s_actividades(id, "hebrio"); break;
                                case "o_vendedor":
                                    s_actividades(id, "compra"); break;
                                case "o_maestro":
                                    s_actividades(id, "lee"); break;
                            }
                        }
                    }
                }
                switch(object_get_name(object_index)){
                    case "o_deportista":
                        alarm[3] = 1;
                        clase = irandom(1); break;
                    case "o_musico":
                        alarm[3] = 1; break;
                    case "o_brujo":
                        alarm[3] = 1; break;
                    case "o_vendedor":
                        alarm[3] = 1;
                        clase = irandom(2); break;
                    case "o_maestro":
                        alarm[3] = 1; break;
                }
                respuesta = true;
            }
            break;
        
        case "jefe":
            if(estado == "libre" and irandom(altrabajo) == 0){
                s_cambio(id, "trabajo", -1, -1, -1, 0, 0, actividades[15]);
                if(s_confirma(raiz, -1)){
                    var i, aux;
                    for(i = 0; i < tabla[raiz.xyz,3]; i += 1){
                        aux = raiz.empleado2[i];
                        if(s_confirma(aux, humano)){
                            s_actividades(aux, "empleado");
                        }
                    }
                }
                alarm[3] = 1;
                respuesta = true;
            }
            break;
        
        case "empleado":
            if(object_index == o_abogado){
                s_plata(1);
                audio_play_sound_at(a_abogado, x, y, 0, m_noido, m_oido, 1, false, 4);
            }
            else{
                s_plata(3);
            }
            s_cambio(id, "trabajo", -1, -1, -1, 0, 0, actividades[15]);
            respuesta = true;
            break;

        case "autonomo":
            if(estado == "libre" and irandom(altrabajo) == 0){
                s_cambio(id, "trabajo", -1, -1, -1, 0, 0, actividades[15]);
                switch(object_get_name(object_index)){
                    case "o_antenaman":
                        s_plata(1);
                        audio_play_sound_at(a_telecomunicacion, x, y, 0, m_noido, m_oido, 1, false, 6); break;
                    case "o_cocinero":
                        if(s_confirma(raiz, o_restaurante)){
                            if(raiz.activo){
                                alarm[3] = 1;
                            }
                            else{
                                s_cambio(id, "libre", -1, -1, -1, 0, 0, actividades[23] + irandom(actividades[23]));
                            }
                        }
                        else{
                            s_cambio(id, "libre", -1, -1, -1, 0, 0, actividades[23] + irandom(actividades[23]));
                        } break;
                    case "o_minero":
                        s_plata(1 + irandom(1));
                        alarm[3] = 1; break;
                    case "o_ingeniero":
                        alarm[3] = 1; break;
                    case "o_obrero":
                        if(s_confirma(raiz, o_fabrica)){
                            s_plata(2);
                        }
                        audio_play_sound_at(a_obrero, x, y, 0, m_noido, m_oido, 1, false, 2); break;
                    case "o_agricultor":
                        s_plata(1);
                        alarm[3] = 1; break;
                    case "o_servidor":
                        alarm[3] = 1; break;
                    case "o_vendetickets":
                        s_plata(irandom(1));
                        alarm[3] = 1; break;
                    case "o_cientifico":
                        clase = irandom(1);
                        if(clase == 1){
                            alarm[3] = 1;
                            if(!collision_circle(x, y, vision * 2, o_robot, 1, 1)){
                                s_plata(2);
                                aux = instance_create(x, y + 1, o_robot);
                                aux.raiz = raiz;
                            }
                        } break;
                }
                respuesta = true;
            }
            break;
        
        case "bombaso":
            if(estado == "libre" and irandom(altrabajo) == 0){
                s_cambio(id, argument1, -1, -1, -1, 0, 0, actividades[17]);
                respuesta = true;
            }
            break;
        
        case "come":
            aux = collision_circle(x, y, vision * 2, o_restaurante, 1, 1);
            if(aux){
                if(aux.activo){
                    s_cambio(id, argument1, -1, -1, -1, aux.x, aux.y, actividades[16]);
                    audio_play_sound_at(a_come, x, y, 0, m_noido, m_oido, 1, false, 6);
                    s_plata(1 + irandom(1));
                    respuesta = true;
                }
            }
            break;
        
        case "protesta":
            s_cambio(id, argument1, -1, -1, -1, 0, 0, actividades[17]);
            alarm[3] = 1 + irandom(room_speed * 2);
            respuesta = true;
            break;
        
        case "habla":
                var i;
                for(i = 0; i < instance_number(ciudadano); i += 1){
                    aux = instance_find(ciudadano, i);
                    if(point_distance(x, y, aux.x, aux.y) < vision and aux != id){
                        if(aux.estado == "libre"){
                            s_cambio(id, argument1, -1, -1, aux, 0, 0, actividades[18]);
                            s_cambio(aux, argument1, -1, -1, id, 0, 0, actividades[18]);
                            audio_play_sound_at(a_habla, x, y, 0, m_noido, m_oido, 1, false, 4);
                            respuesta = true;
                            break;
                        }
                    }
                }
                break;
        
        case "foto":
            if(irandom(4) == 0){//probabilidad tomar fotos
                s_cambio(id, argument1, -1, -1, -1, 0, 0, actividades[19]);
                alarm[3] = 1;
                respuesta = true;
                s_plata(2);
            }
            break;
        
        case "vuela":
            aux = instance_create(x, y, o_volador);
            aux.raiz = id;
            audio_play_sound_at(a_jetpack, x, y, 0, m_noido, m_oido, 1, false, 6);
            x = -500;
            y = 0;
            s_cambio(id, argument1, -1, -1, aux, 0, 0, actividades[20]);
            respuesta = true;
            break;
        
        case "duerme":
            s_cambio(id, argument1, -1, -1, -1, 0, 0, actividades[21]);
            alarm[3] = 1;
            respuesta = true;
            break;
        
        case "celular":
            if(irandom(2 + tabla[33,6]) > 2){
                var i, antena;
                antena = 0;
                for(i = 0; i < tabla[33,6]; i += 1){
                    aux = instance_find(o_comunicacion, i);
                    if(aux.mienergia > 0){
                        antena += 1;
                    }
                }
                if(irandom(2 + antena) > 2){
                    for(i = 0; i < instance_number(ciudadano); i += 1){
                        aux = instance_find(ciudadano, i);
                        if(point_distance(x, y, aux.x, aux.y) > vision * 3 and aux != id){
                            if(aux.estado == "libre" and aux.object_index != o_pobre){
                                s_cambio(id, argument1, -1, -1, aux, 0, 0, actividades[22]);
                                s_cambio(aux, argument1, -1, -1, id, 0, 0, actividades[22]);
                                audio_play_sound_at(a_celular, x, y, 0, m_noido, m_oido, 1, false, 4);
                                respuesta = true;
                                break;
                            }
                        }
                    }
                }
            }
            break;
        
        case "panico":
            s_cambio(id, argument1, -1, -1, meta, 0, 0, -1);
            respuesta = true;
            break;
        
        case "hulle":
            s_cambio(id, argument1, -1, -1, meta, 0, 0, -1);
            respuesta = true;
            break;
        
        case "preso":
            s_cambio(id, argument1, -1, -1, -1, 0, 0, actividades[21] * 3);
            audio_play_sound_at(a_capturado, x, y, 0, m_noido, m_oido, 1, false, 6);
            respuesta = true;
            break;
        
        case "teleporta":
            s_teleporta(id);
            break;
        
        case "casa":
            if(irandom(6) == 0){//probabilidad ir a dormir
                if(s_confirma(raiz, viviendas)){
                    s_cambio(id, argument1, -1, -1, -1, 0, 0, -1);
                    respuesta = true;
                }
            }
            break;
        
        case "encaleta":
            if(s_confirma(raiz, viviendas)){
                s_cambio(id, argument1, -1, -1, -1, 0, 0, -1);
                respuesta = true;
            }
            break;
        
        case "cura":
        case "limpia":
        case "defiende":
        case "asecha":
            s_cambio(id, argument1, -1, -1, meta, 0, 0, -1);
            respuesta = true;
        break;
        
        case "manual":
            if(instance_exists(o_player)){
                if(o_player.activo){
                    s_cambio(id, argument1, -1, -1, o_player, 0, 0, -1);
                    respuesta = true;
                }
            }
        break;
        
        case "lameta":
            if(instance_exists(o_player)){
                s_cambio(id, argument1, -1, -1, -1, o_player.x, o_player.y, -1);
                respuesta = true;
            }
            break;
                
        case "sigueme":
            if(instance_exists(o_player)){
                if(o_player.activo){
                    s_cambio(id, argument1, -1, -1, o_player, 0, 0, -1);
                    respuesta = true;
                }
            }
            break;
        case "deambulando":
            s_cambio(id, argument1, -1, -1, -1, 0, 0, actividades[23] + irandom(actividades[23]));
            break;
    }
}

if(!respuesta){
    s_actividades(argument0, "libre");
}
