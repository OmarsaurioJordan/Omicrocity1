//tipo de logro buscado
var respuesta, i;
respuesta = false;

switch(argument0){
    case 0://ciudad longeva
        if(logro[argument0] < 3){
            if(control.years >= 3){
                logro[argument0] = 3;
                respuesta = true;
            }
            else if(logro[argument0] < 2){
                if(control.years >= 2){
                    logro[argument0] = 2;
                    respuesta = true;
                }
                else if(logro[argument0] < 1){
                    if(control.years >= 1){
                        logro[argument0] = 1;
                        respuesta = true;
                    }
                }
            }
        }
    break;
    case 1://mucha gente
        if(logro[argument0] < 3){
            if(totalescosas[0] >= 500){
                logro[argument0] = 3;
                respuesta = true;
            }
            else if(logro[argument0] < 2){
                if(totalescosas[0] >= 350){
                    logro[argument0] = 2;
                    respuesta = true;
                }
                else if(logro[argument0] < 1){
                    if(totalescosas[0] >= 200){
                        logro[argument0] = 1;
                        respuesta = true;
                    }
                }
            }
        }
    break;
    case 2://mucha edificacion
        if(logro[argument0] < 3){
            if(totalescosas[1] >= 300){
                logro[argument0] = 3;
                respuesta = true;
            }
            else if(logro[argument0] < 2){
                if(totalescosas[1] >= 200){
                    logro[argument0] = 2;
                    respuesta = true;
                }
                else if(logro[argument0] < 1){
                    if(totalescosas[1] >= 100){
                        logro[argument0] = 1;
                        respuesta = true;
                    }
                }
            }
        }
    break;
    case 3://gran avaluo
        if(logro[argument0] < 3){
            if(totalescosas[5] >= 40000){
                logro[argument0] = 3;
                respuesta = true;
            }
            else if(logro[argument0] < 2){
                if(totalescosas[5] >= 30000){
                    logro[argument0] = 2;
                    respuesta = true;
                }
                else if(logro[argument0] < 1){
                    if(totalescosas[5] >= 20000){
                        logro[argument0] = 1;
                        respuesta = true;
                    }
                }
            }
        }
    break;
    case 4://dinero maximo
        if(logro[argument0] < 3){
            if(fondos >= 9999){
                logro[argument0] = 3;
                respuesta = true;
            }
        }
    break;
    case 5://todo desblok
        if(logro[argument0] < 3){
            var aux;
            aux = 1;
            for(i = 0; i < m_construcciones; i++){
                if(dispo[i] == 0){
                    aux = 0;
                    break;
                }
            }
            if(aux == 1){
                logro[argument0] = 3;
                respuesta = true;
            }
        }
    break;
    case 6://codicioso
        if(logro[argument0] < 3){
            if(!instance_exists(o_piramide)){
                logro[argument0] = 3;
                respuesta = true;
            }
        }
    break;
    case 7://matanza
        if(logro[argument0] < 3){
            var aux;
            aux = 0;
            with(o_basura){
                if(clase != -1 and vio){
                    aux += 1;
                }
            }
            if(aux >= 300){
                logro[argument0] = 3;
                respuesta = true;
            }
            else if(logro[argument0] < 2){
                if(aux >= 200){
                    logro[argument0] = 2;
                    respuesta = true;
                }
                else if(logro[argument0] < 1){
                    if(aux >= 100){
                        logro[argument0] = 1;
                        respuesta = true;
                    }
                }
            }
        }
    break;
    case 8://ciudad pobre
        if(logro[argument0] < 3){
            var aux;
            aux = instance_number(o_palomera) + (instance_number(o_choza) + instance_number(o_guarida)) * 0.5;
            if(aux >= 30){
                logro[argument0] = 3;
                respuesta = true;
            }
            else if(logro[argument0] < 2){
                if(aux >= 20){
                    logro[argument0] = 2;
                    respuesta = true;
                }
                else if(logro[argument0] < 1){
                    if(aux >= 10){
                        logro[argument0] = 1;
                        respuesta = true;
                    }
                }
            }
        }
    break;
    case 9://ciudad militarizada
        if(logro[argument0] < 3){
            var aux;
            aux = instance_number(o_cuartel);
            if(aux >= 18){
                logro[argument0] = 3;
                respuesta = true;
            }
            else if(logro[argument0] < 2){
                if(aux >= 12){
                    logro[argument0] = 2;
                    respuesta = true;
                }
                else if(logro[argument0] < 1){
                    if(aux >= 6){
                        logro[argument0] = 1;
                        respuesta = true;
                    }
                }
            }
        }
    break;
    case 10://ciudad verde
        if(logro[argument0] < 3){
            var aux;
            aux = instance_number(o_pajaro) - 11;
            if(aux >= 100){
                logro[argument0] = 3;
                respuesta = true;
            }
            else if(logro[argument0] < 2){
                if(aux >= 750){
                    logro[argument0] = 2;
                    respuesta = true;
                }
                else if(logro[argument0] < 1){
                    if(aux >= 50){
                        logro[argument0] = 1;
                        respuesta = true;
                    }
                }
            }
        }
    break;
    case 11://ciudad turista
        if(logro[argument0] < 3){
            var aux1, aux2;
            aux1 = instance_number(o_hotel);
            aux2 = instance_number(o_aeropuerto);
            if(aux1 >= 18 and aux2 >= 6){
                logro[argument0] = 3;
                respuesta = true;
            }
            else if(logro[argument0] < 2){
                if(aux1 >= 12 and aux2 >= 4){
                    logro[argument0] = 2;
                    respuesta = true;
                }
                else if(logro[argument0] < 1){
                    if(aux1 >= 6 and aux2 >= 2){
                        logro[argument0] = 1;
                        respuesta = true;
                    }
                }
            }
        }
    break;
    case 12://ciudad industrial
        if(logro[argument0] < 3){
            var aux1, aux2, aux3;
            aux1 = instance_number(o_mina);
            aux2 = instance_number(o_fabrica);
            aux3 = instance_number(o_puerto);
            if(aux1 >= 6 and aux2 >= 18 and aux3 >= 9){
                logro[argument0] = 3;
                respuesta = true;
            }
            else if(logro[argument0] < 2){
                if(aux1 >= 4 and aux2 >= 12 and aux3 >= 6){
                    logro[argument0] = 2;
                    respuesta = true;
                }
                else if(logro[argument0] < 1){
                    if(aux1 >= 2 and aux2 >= 6 and aux3 >= 3){
                        logro[argument0] = 1;
                        respuesta = true;
                    }
                }
            }
        }
    break;
    case 13://ciudad futurista
        if(logro[argument0] < 3){
            var aux1, aux2;
            aux1 = instance_number(o_laboratorio);
            aux2 = instance_number(o_futurista);
            if(aux1 >= 3 and aux2 >= 18){
                logro[argument0] = 3;
                respuesta = true;
            }
            else if(logro[argument0] < 2){
                if(aux1 >= 2 and aux2 >= 12){
                    logro[argument0] = 2;
                    respuesta = true;
                }
                else if(logro[argument0] < 1){
                    if(aux1 >= 1 and aux2 >= 6){
                        logro[argument0] = 1;
                        respuesta = true;
                    }
                }
            }
        }
    break;
    case 14://ciudad gotica
        if(logro[argument0] < 3){
            var aux1, aux2;
            aux1 = instance_number(o_cementerio);
            aux2 = instance_number(o_exotica);
            if(aux1 >= 9 and aux2 >= 18){
                logro[argument0] = 3;
                respuesta = true;
            }
            else if(logro[argument0] < 2){
                if(aux1 >= 6 and aux2 >= 12){
                    logro[argument0] = 2;
                    respuesta = true;
                }
                else if(logro[argument0] < 1){
                    if(aux1 >= 3 and aux2 >= 6){
                        logro[argument0] = 1;
                        respuesta = true;
                    }
                }
            }
        }
    break;
    case 15://ciudad rascacielos
        if(logro[argument0] < 3){
            if(instance_exists(o_edificio) and instance_exists(o_empresa) and instance_exists(o_hotel)){
                var aux;
                aux = instance_number(o_edificio) + instance_number(o_empresa) +
                    instance_number(o_hotel) * 0.75 + instance_number(o_condominio) * 0.5;
                if(aux >= 42){
                    logro[argument0] = 3;
                    respuesta = true;
                }
                else if(logro[argument0] < 2){
                    if(aux >= 28){
                        logro[argument0] = 2;
                        respuesta = true;
                    }
                    else if(logro[argument0] < 1){
                        if(aux >= 14){
                            logro[argument0] = 1;
                            respuesta = true;
                        }
                    }
                }
            }
        }
    break;
    case 16://basura y polucion
        if(logro[argument0] < 3){
            if(totalescosas[6] >= 360){
                logro[argument0] = 3;
                respuesta = true;
            }
            else if(logro[argument0] < 2){
                if(totalescosas[6] >= 180){
                    logro[argument0] = 2;
                    respuesta = true;
                }
                else if(logro[argument0] < 1){
                    if(totalescosas[6] >= 90){
                        logro[argument0] = 1;
                        respuesta = true;
                    }
                }
            }
        }
    break;
    case 17://parecen conejos
        if(logro[argument0] < 3){
            if(totalescosas[7] >= 130){
                logro[argument0] = 3;
                respuesta = true;
            }
            else if(logro[argument0] < 2){
                if(totalescosas[7] >= 90){
                    logro[argument0] = 2;
                    respuesta = true;
                }
                else if(logro[argument0] < 1){
                    if(totalescosas[7] >= 50){
                        logro[argument0] = 1;
                        respuesta = true;
                    }
                }
            }
        }
    break;
    case 18://dominio del cielo
        if(logro[argument0] < 3){
            var aux;
            aux = instance_number(o_transporte) + instance_number(o_mercancia);
            with(o_retirada){
                if(tipo == "transporte" or tipo == "mercalleno" or tipo == "mercavacio"){
                    aux += 1;
                }
            }
            if(aux >= 15){
                logro[argument0] = 3;
                respuesta = true;
            }
            else if(logro[argument0] < 2){
                if(aux >= 10){
                    logro[argument0] = 2;
                    respuesta = true;
                }
                else if(logro[argument0] < 1){
                    if(aux >= 5){
                        logro[argument0] = 1;
                        respuesta = true;
                    }
                }
            }
        }
    break;
    case 19://exploradores
        if(logro[argument0] < 3){
            var aux;
            aux = instance_number(o_explorador);
            if(aux >= 3){
                logro[argument0] = 3;
                respuesta = true;
            }
            else if(logro[argument0] < 2){
                if(aux >= 2){
                    logro[argument0] = 2;
                    respuesta = true;
                }
                else if(logro[argument0] < 1){
                    if(aux >= 1){
                        logro[argument0] = 1;
                        respuesta = true;
                    }
                }
            }
        }
    break;
    case 20://turistas
        if(logro[argument0] < 3){
            var aux;
            aux = instance_number(o_turista);
            if(aux >= 12){
                logro[argument0] = 3;
                respuesta = true;
            }
            else if(logro[argument0] < 2){
                if(aux >= 6){
                    logro[argument0] = 2;
                    respuesta = true;
                }
                else if(logro[argument0] < 1){
                    if(aux >= 1){
                        logro[argument0] = 1;
                        respuesta = true;
                    }
                }
            }
        }
    break;
    case 21://indigenas
        if(logro[argument0] < 3){
            logro[argument0] = 3;
            respuesta = true;
        }
    break;
    case 22://nudes
        if(logro[argument0] < 3){
            var aux;
            aux = instance_number(o_nude);
            if(aux >= 12){
                logro[argument0] = 3;
                respuesta = true;
            }
            else if(logro[argument0] < 2){
                if(aux >= 6){
                    logro[argument0] = 2;
                    respuesta = true;
                }
                else if(logro[argument0] < 1){
                    if(aux >= 1){
                        logro[argument0] = 1;
                        respuesta = true;
                    }
                }
            }
        }
    break;
    case 23://bombaso
        if(logro[argument0] < 3){
            var aux;
            aux = instance_number(o_terrorista);
            if(aux >= 6){
                logro[argument0] = 3;
                respuesta = true;
            }
            else if(logro[argument0] < 2){
                if(aux >= 3){
                    logro[argument0] = 2;
                    respuesta = true;
                }
                else if(logro[argument0] < 1){
                    if(aux >= 1){
                        logro[argument0] = 1;
                        respuesta = true;
                    }
                }
            }
        }
    break;
    case 24://zombies
        if(logro[argument0] < 3){
            var aux, ante;
            ante = logro[argument0];
            aux = instance_number(o_zombie);
            if(aux >= 100){
                logro[argument0] = 2 + control.elbonus[0];
            }
            else if(logro[argument0] < 2){
                if(aux >= 3){
                    logro[argument0] = 1 + control.elbonus[0];
                }
            }
            if(logro[argument0] > ante){
                respuesta = true;
            }
        }
    break;
    case 25://aliens
        if(logro[argument0] < 3){
            var aux, ante;
            ante = logro[argument0];
            aux = instance_number(o_ovni);
            if(aux >= 3){
                logro[argument0] = 2 + control.elbonus[1];
            }
            else if(logro[argument0] < 2){
                if(aux >= 1){
                    logro[argument0] = 1 + control.elbonus[1];
                }
            }
            if(logro[argument0] > ante){
                respuesta = true;
            }
        }
    break;
    case 26://ovnis
        if(logro[argument0] < 3){
            var aux, ante;
            ante = logro[argument0];
            aux = instance_number(o_abducidor);
            if(aux >= 3){
                logro[argument0] = 2 + control.elbonus[1];
            }
            else if(logro[argument0] < 2){
                if(aux >= 1){
                    logro[argument0] = 1 + control.elbonus[1];
                }
            }
            if(logro[argument0] > ante){
                respuesta = true;
            }
        }
    break;
    case 27://piratas
        if(logro[argument0] < 3){
            var aux, ante;
            ante = logro[argument0];
            aux = instance_number(o_pirata);
            if(aux >= 3){
                logro[argument0] = 2 + control.elbonus[2];
            }
            else if(logro[argument0] < 2){
                if(aux >= 1){
                    logro[argument0] = 1 + control.elbonus[2];
                }
            }
            if(logro[argument0] > ante){
                respuesta = true;
            }
        }
    break;
    case 28://bombardeo
        if(logro[argument0] < 3){
            logro[argument0] = 3;
            respuesta = true;
        }
    break;
    case 29://mecanoides
        if(logro[argument0] < 3){
            var aux, ante;
            ante = logro[argument0];
            aux = 0;
            with(o_fabrica){
                if(alarm[2] != -1){
                    aux += 1;
                }
            }
            if(aux >= 3){
                logro[argument0] = 2 + control.elbonus[3];
            }
            else if(logro[argument0] < 2){
                if(aux >= 1){
                    logro[argument0] = 1 + control.elbonus[3];
                }
            }
            if(logro[argument0] > ante){
                respuesta = true;
            }
        }
    break;
    case 30://pandemia
        if(logro[argument0] < 3){
            var aux, ante;
            ante = logro[argument0];
            aux = 0;
            with(vomito){
                if(clase){
                    aux += 1;
                }
            }
            if(aux >= 25){
                logro[argument0] = 2 + control.elbonus[4];
            }
            else if(logro[argument0] < 2){
                if(aux >= 1){
                    logro[argument0] = 1 + control.elbonus[4];
                }
            }
            if(logro[argument0] > ante){
                respuesta = true;
            }
        }
    break;
    case 31://demonio
        if(logro[argument0] < 3){
            if(control.elbonus[5] == 1){
                logro[argument0] = 3;
                respuesta = true;
            }
            else if(logro[argument0] < 2){
                logro[argument0] = 2;
                respuesta = true;
            }
        }
    break;
    case 32://prehistorico
        if(logro[argument0] < 3){
            if(control.elbonus[6] == 1){
                logro[argument0] = 3;
                respuesta = true;
            }
            else if(logro[argument0] < 2){
                logro[argument0] = 2;
                respuesta = true;
            }
        }
    break;
    case 33://superheroe
        if(logro[argument0] < 3){
            if(control.elbonus[7] == 1){
                logro[argument0] = 3;
                respuesta = true;
            }
            else if(logro[argument0] < 2){
                logro[argument0] = 2;
                respuesta = true;
            }
        }
    break;
    case 34://caos
        if(logro[argument0] < 3){
            var aux;
            aux = 0;
            if(instance_exists(o_ovni)){
                aux += 1;
            }
            if(instance_exists(o_zombie)){
                aux += 1;
            }
            if(!s_nopan()){
                aux += 1;
            }
            if(instance_exists(o_pirata)){
                aux += 1;
            }
            if(instance_exists(o_mecanoide)){
                aux += 1;
            }
            if(instance_exists(o_prehistorico)){
                aux += 1;
            }
            if(instance_exists(o_bombardero)){
                aux += 1;
            }
            if(aux >= 4){
                logro[argument0] = 3;
                respuesta = true;
            }
            else if(logro[argument0] < 2){
                if(aux >= 3){
                    logro[argument0] = 2;
                    respuesta = true;
                }
                else if(logro[argument0] < 1){
                    if(aux >= 2){
                        logro[argument0] = 1;
                        respuesta = true;
                    }
                }
            }
        }
    break;
}

if(respuesta){
    s_notificacion(28,"");
    audio_play_sound(a_desbloqueo, 20, false);
    var men;
    men = "1";
    for(i = 0; i < 35; i++){
        if(logro[i] != 3){
            men = "0";
            break;
        }
    }
    if(men == "1"){
        logro[35] = 3;
    }
    ini_open("config_omty.ini");
    men = "";
    for(i = 0; i < 36; i ++){
        ini_write_string("logros", "l" + string(i), string(logro[i]));
        men += string(logro[i]);
    }
    ini_write_string("logros", "antihack", md5_string_unicode(base64_encode(men) + "10001001110"));
    ini_close();
}
