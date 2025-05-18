//forzar a que suceda algo
var i, tp, vr, aux, nw, nh;
var aux = noone;
var mos = noone;
nw = 112;
nh = 80;
vr = false;
tp = choose("zombies", "pandemia", "abduccion", "aliens", "mecanoides", "demons", "nudes", "bombaso", "piratas", "tribu", "prehistorico", "heroe");
//tp = get_string("zombies, pandemia, abduccion, aliens, mecanoides, demons, nudes, bombaso, piratas, tribu, prehistorico, heroe", "");
switch(tp){
    case "zombies":
        if(totalescosas[0] > 130){
            if(tabla[31,6] > 3 and irandom(hardcore) < tabla[31,6]){
                aux = instance_find(o_cementerio, irandom(tabla[31,6] - 1));
                vr = true;
            }
            else{
                for(i = 0; i < tabla[10,6]; i += 1){
                    aux = instance_find(o_laboratorio, i);
                    aux = collision_rectangle(aux.x - nw, aux.y - nh, aux.x + nw, aux.y + nh, o_cementerio, 1, 1);
                    if(aux){
                        control.elbonus[0] = 1;
                        vr = true;
                        break;
                    }
                }
            }
        }
    break;
    case "pandemia":
        if(totalescosas[0] > 130){
            if(totalescosas[6] > 50 and irandom(floor(hardcore * 0.5)) == 0){
                aux = instance_find(bloques, irandom(instance_number(bloques) - 1));
                vr = true;
            }
            else if(totalescosas[6] > 25){
                for(i = 0; i < tabla[10,6]; i += 1){
                    aux = instance_find(o_laboratorio, i);
                    aux = collision_rectangle(aux.x - nw, aux.y - nh, aux.x + nw, aux.y + nh, o_basurero, 1, 1);
                    if(aux){
                        control.elbonus[4] = 1;
                        vr = true;
                        break;
                    }
                }
            }
        }
    break;
    case "mecanoides":
        if(totalescosas[0] > 130){
            if(tabla[6,6] > 5 and irandom(hardcore) < tabla[10,6]){
                aux = instance_find(o_fabrica, irandom(tabla[6,6]) - 1);
                vr = true;
            }
            else{
                for(i = 0; i < tabla[10,6]; i += 1){
                    aux = instance_find(o_laboratorio, i);
                    aux = collision_rectangle(aux.x - nw, aux.y - nh, aux.x + nw, aux.y + nh, o_fabrica, 1, 1);
                    if(aux){
                        control.elbonus[3] = 1;
                        vr = true;
                        break;
                    }
                }
            }
        }
    break;
    case "aliens":
        if(totalescosas[0] > 130){
            if(tabla[33,6] > 1 and irandom(hardcore) < tabla[33,6]){
                vr = true;
            }
            else{
                for(i = 0; i < tabla[10,6]; i += 1){
                    aux = instance_find(o_laboratorio, i);
                    if(collision_rectangle(aux.x - nw, aux.y - nh, aux.x + nw, aux.y + nh, o_comunicacion, 1, 1)){
                        control.elbonus[1] = 1;
                        vr = true;
                        break;
                    }
                }
            }
        }
    break;
    case "abduccion":
        if(totalescosas[0] > 40){
            if(irandom(hardcore) < round(totalescosas[8] * 0.02)){
                vr = true;
            }
            else{
                for(i = 0; i < tabla[10,6]; i += 1){
                    aux = instance_find(o_laboratorio, i);
                    if(collision_rectangle(aux.x - nw, aux.y - nh, aux.x + nw, aux.y + nh, o_comunicacion, 1, 1)){
                        control.elbonus[1] = 1;
                        vr = true;
                        break;
                    }
                }
            }
        }
    break;
    case "demons":
        if(totalescosas[0] > 30 and totalescosas[8] > 100){
            if(tabla[2,6] > 2 and irandom(hardcore) < tabla[2,6]){
                aux = instance_find(o_templo, irandom(tabla[2,6] - 1));
                vr = true;
            }
            else{
                for(i = 0; i < tabla[2,6]; i += 1){
                    aux = instance_find(o_templo, i);
                    if(collision_rectangle(aux.x - nw, aux.y - nh, aux.x + nw, aux.y + nh, o_cementerio, 1, 1)){
                        control.elbonus[5] = 1;
                        vr = true;
                        break;
                    }
                }
            }
        }
    break;
    case "nudes":
        if(totalescosas[0] > 20){
            var los, mos;
            los = 0;
            if(instance_exists(o_gobernacion)){
                aux = instance_find(o_gobernacion, 0);
                if(collision_rectangle(aux.x - nw, aux.y - nh, aux.x + nw, aux.y + nh, o_casino, 1, 1)){
                    los = 1;
                }
            }
            mos = instance_number(o_nude);
            if((mos < 2 * tabla[4,6] or los == 1) and mos < totalescosas[0] * 0.25){
                for(i = 0; i < tabla[4,6]; i += 1){
                    mos = 0;
                    aux = instance_find(o_casino, i);
                    if(collision_rectangle(aux.x + 144 - 48, aux.y - 32, aux.x + 144 + 48, aux.y + 32, o_casino, 1, 1)){
                        mos += 1;
                    }
                    if(collision_rectangle(aux.x - 144 - 48, aux.y - 32, aux.x - 144 + 48, aux.y + 32, o_casino, 1, 1)){
                        mos += 1;
                    }
                    if(collision_rectangle(aux.x - 48, aux.y + 96 - 32, aux.x + 48, aux.y + 96 + 32, o_casino, 1, 1)){
                        mos += 1;
                    }
                    if(collision_rectangle(aux.x - 48, aux.y - 96 - 32, aux.x + 48, aux.y - 96 + 32, o_casino, 1, 1)){
                        mos += 1;
                    }
                    if(mos > 1){
                        vr = true;
                        break;
                    }
                }
            }
        }
    break;
    case "bombaso":
        if(totalescosas[0] > 50 and totalescosas[1] > 40 and irandom(2) == 0){
            if(irandom(hardcore) == 0 and tabla[12,6] > 3){
                vr = true;
            }
            else if(instance_exists(o_gobernacion)){
                aux = instance_find(o_gobernacion, 0);
                if(collision_rectangle(aux.x - nw, aux.y - nh, aux.x + nw, aux.y + nh, o_cuartel, 1, 1)){
                    control.elbonus[2] = 1;
                    vr = true;
                }
            }
        }
    break;
    case "piratas":
        if(totalescosas[0] > 40 and totalescosas[7] > fuerzas){
            if(irandom(hardcore) < round(totalescosas[7] / fuerzas)){
                vr = true;
            }
            else if(instance_exists(o_gobernacion)){
                aux = instance_find(o_gobernacion, 0);
                if(collision_rectangle(aux.x - nw, aux.y - nh, aux.x + nw, aux.y + nh, o_cuartel, 1, 1)){
                    control.elbonus[2] = 1;
                    vr = true;
                }
            }
        }
    break;
    case "tribu":
        if(totalescosas[0] < 90 and irandom(instance_number(o_pajaro)) > 10){
            vr = true;
        }
        else if(irandom(floor(hardcore * 1.5)) == 0){
            vr = true;
        }
    break;
    case "prehistorico":
        if(totalescosas[0] > 130){
            if(totalescosas[8] > 180 and tabla[32,6] > 2 and irandom(hardcore) < tabla[32,6]){
                aux = instance_find(o_dinoparque, irandom(tabla[32,6] - 1));
                vr = true;
            }
            else{
                for(i = 0; i < tabla[10,6]; i += 1){
                    aux = instance_find(o_laboratorio, i);
                    aux = collision_rectangle(aux.x - nw, aux.y - nh, aux.x + nw, aux.y + nh, o_dinoparque, 1, 1);
                    if(aux){
                        control.elbonus[6] = 1;
                        vr = true;
                        break;
                    }
                }
            }
        }
    break;
    case "heroe":
        if(tabla[10,6] > 0 and irandom(1) == 0 and !instance_exists(o_heroe)){
            for(i = 0; i < tabla[10,6]; i += 1){
                aux = instance_find(o_laboratorio, i);
                mos = collision_rectangle(aux.x - nw - 32, aux.y - nh - 32, aux.x + nw + 32, aux.y + nh + 32, o_policia, 1, 1);
                if(mos){
                    control.elbonus[7] = 1;
                    vr = true;
                }
            }
        }
    break;
}

if(vr){
    switch(tp){
        case "zombies":
            if(!instance_exists(o_zombie) and instance_exists(aux)){
                nh = irandom(359);
                instance_create(aux.x + lengthdir_x(32, nh), aux.y + lengthdir_y(32, nh), o_zombie);
                s_notificacion(8, "");
            }
        break;
        case "pandemia":
            if(s_nopan() and instance_exists(aux)){
                nh = instance_nearest(aux.x, aux.y, humano);
                nh.virus = 2;
                s_notificacion(10, "");
            }
        break;
        case "mecanoides":
            if (instance_exists(aux)) {
                if(aux.alarm[2] == -1){
                    aux.alarm[2] = 1;
                    audio_play_sound(a_fabricam, 20, false);
                    s_notificacion(9, "");
                }
                else if(irandom(2) == 0 and !collision_rectangle(aux.x - nw, aux.y - nh, aux.x + nw, aux.y + nh, o_laboratorio, 1, 1)){
                    aux.alarm[2] = -1;
                }
                s_logrado(29);
            }
        break;
        case "aliens":
            if(irandom(1 + hardcore * 2) == 0){
                repeat(1 + floor((totalescosas[0] * 0.75) / abajar)){
                    nh = (room_width * 0.5) + (room_height * 0.25);
                    nw = irandom(359);
                    instance_create(room_width * 0.5 + lengthdir_x(nh, nw), room_height * 0.5 + lengthdir_y(nh, nw), o_ovni);
                }
                s_notificacion(6, "!!!");
            }
            else{
                nh = (room_width * 0.5) + (room_height * 0.25);
                nw = irandom(359);
                instance_create(room_width * 0.5 + lengthdir_x(nh, nw), room_height * 0.5 + lengthdir_y(nh, nw), o_ovni);
                nw = round(nw * 0.1) * 10;
                s_notificacion(6, string(nw));
            }
            s_logrado(25);
        break;
        case "abduccion":
            if(irandom(1 + hardcore * 2) == 0){
                repeat(1 + floor((totalescosas[0] * 0.25) / fuerzas)){
                    nh = (room_width * 0.5) + (room_height * 0.25);
                    nw = irandom(359);
                    instance_create(room_width * 0.5 + lengthdir_x(nh, nw), room_height * 0.5 + lengthdir_y(nh, nw), o_abducidor);
                }
                s_notificacion(7, "!!!");
            }
            else{
                nh = (room_width * 0.5) + (room_height * 0.25);
                nw = irandom(359);
                instance_create(room_width * 0.5 + lengthdir_x(nh, nw), room_height * 0.5 + lengthdir_y(nh, nw), o_abducidor);
                nw = round(nw * 0.1) * 10;
                s_notificacion(7, string(nw));
            }
            s_logrado(26);
        break;
        case "demons":
            if (instance_exists(aux)) {
                nh = irandom(359);
                instance_create(aux.x + lengthdir_x(32, nh), aux.y + lengthdir_y(32, nh), o_demonio);
                audio_play_sound(a_demon, 20, false);
                s_notificacion(14, "");
                s_logrado(31);
            }
        break;
        case "nudes":
            nw = 1;
            if(!instance_exists(o_nude)){
                nw = 2 * tabla[4,6];
                s_notificacion(15, "");
            }
            else if(irandom(2) == 0 and los == 0){
                s_notificacion(15, "");
            }
            repeat(nw){
                i = 0;
                do{
                    if(instance_exists(ciudadano) and instance_exists(aux)){
                        aux = instance_find(ciudadano, irandom(instance_number(ciudadano) - 1));
                        if(aux.object_index != o_indio and aux.object_index != o_nude
                                and aux.object_index != o_vampiro and aux.object_index != o_futurista){
                            nh = instance_create(aux.x, aux.y, o_nude);
                            audio_play_sound_at(a_nude, nh.x, nh.y, 0, m_noido, m_oido, 1, false, 8);
                            i = 10;
                            with(aux){
                                instance_destroy();
                            }
                        }
                    }
                    i += 1;
                }
                until(i > 9);
            }
            s_logrado(22);
        break;
        case "bombaso":
            if(instance_exists(bloques)){
                i = instance_find(bloques, irandom(instance_number(bloques) - 1));
                nh = (room_width * 0.5) + (room_height * 0.25);
                nw = irandom(359);
                aux = instance_create(room_width * 0.5 + lengthdir_x(nh, nw), room_height * 0.5 + lengthdir_y(nh, nw), o_bombardero);
                aux.meta = i;
                nw = round(nw * 0.1) * 10;
                s_notificacion(5, string(nw));
                s_logrado(28);
            }
        break;
        case "piratas":
            if(irandom(1 + hardcore * 2) == 0){
                repeat(1 + floor((totalescosas[7] * 0.75) / fuerzas)){
                    nh = (room_width * 0.5) + (room_height * 0.25);
                    nw = irandom(359);
                    instance_create(room_width * 0.5 + lengthdir_x(nh, nw), room_height * 0.5 + lengthdir_y(nh, nw), o_pirata);}
                s_notificacion(4, "!!!");
            }
            else{
                nh = (room_width * 0.5) + (room_height * 0.25);
                nw = irandom(359);
                instance_create(room_width * 0.5 + lengthdir_x(nh, nw), room_height * 0.5 + lengthdir_y(nh, nw), o_pirata);
                nw = round(nw * 0.1) * 10;
                s_notificacion(4, string(nw));
            }
            s_logrado(27);
        break;
        case "tribu":
            nh = (room_width * 0.5) + (room_height * 0.25);
            nw = irandom(359);
            instance_create(room_width * 0.5 + lengthdir_x(nh, nw), room_height * 0.5 + lengthdir_y(nh, nw), o_comanche);
            nw = round(nw * 0.1) * 10;
            s_notificacion(16, string(nw));
            audio_play_sound(a_indio, 20, false);
        break;
        case "prehistorico":
            if (instance_exists(aux)) {
                instance_create(aux.x, aux.y, o_prehistorico);
                audio_play_sound(a_prehistorico, 18, false);
                with(aux){
                    instance_create(x,y,o_polvo);
                    instance_destroy();
                }
                s_notificacion(25, "");
                s_logrado(32);
            }
        break;
        case "heroe":
            if(!instance_exists(o_heroe) and instance_exists(mos)){
                instance_create(mos.x, mos.y, o_heroe);
                with(mos){
                    instance_destroy();
                }
                s_notificacion(26, "");
            }
        break;}
}
else if(argument0){
    s_acontecimiento(true);
}
s_logrado(34);
