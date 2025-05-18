var respuesta, i;
respuesta = false;
switch(control.priori){
    case 0:
        if(s_preferente(0)){
            respuesta = true;
        }
        else if(s_preferente(1)){
            respuesta = true;
        }
        else if(s_preferente(2)){
            respuesta = true;
        }
        break;
    case 1:
        if(s_preferente(0)){
            respuesta = true;
        }
        else if(s_preferente(2)){
            respuesta = true;
        }
        else if(s_preferente(1)){
            respuesta = true;
        }
        break;
    case 2:
        if(s_preferente(1)){
            respuesta = true;
        }
        else if(s_preferente(2)){
            respuesta = true;
        }
        else if(s_preferente(0)){
            respuesta = true;
        }
        break;
    case 3:
        if(s_preferente(1)){
            respuesta = true;
        }
        else if(s_preferente(0)){
            respuesta = true;
        }
        else if(s_preferente(2)){
            respuesta = true;
        }
        break;
    case 4:
        if(s_preferente(2)){
            respuesta = true;
        }
        else if(s_preferente(0)){
            respuesta = true;
        }
        else if(s_preferente(1)){
            respuesta = true;
        }
        break;
    case 5:
        if(s_preferente(2)){
            respuesta = true;
        }
        else if(s_preferente(1)){
            respuesta = true;
        }
        else if(s_preferente(0)){
            respuesta = true;
        }
        break;
}

if(dispo[3] != 1){//hospital
    if(totalescosas[0] > 50){
        dispo[3] = 1;
        respuesta = true;
        s_notibloqueo(3);
    }
}
if(dispo[4] != 1){//casino
    if(tabla[29,6] >= 2){
        dispo[4] = 1;
        respuesta = true;
        s_notibloqueo(4);
    }
}
if(dispo[5] != 1){//empresa
    if(tabla[21,6] >= 8){
        dispo[5] = 1;
        respuesta = true;
        s_notibloqueo(5);
    }
}
if(dispo[6] != 1){//fabrica
    if(tabla[38,6] >= 1){
        dispo[6] = 1;
        respuesta = true;
        s_notibloqueo(6);
    }
}
if(dispo[7] != 1){//puerto
    if(tabla[6,6] >= 2 and tabla[27,6] >= 1){
        dispo[7] = 1;
        respuesta = true;
        s_notibloqueo(7);
    }
}
if(dispo[8] != 1){//comercio
    if(tabla[6,6] >= 1){
        dispo[8] = 1;
        respuesta = true;
        s_notibloqueo(8);
    }
}
if(dispo[9] != 1){//universidad
    if(totalescosas[0] > 150){
        dispo[9] = 1;
        respuesta = true;
        s_notibloqueo(9);
    }
}
if(dispo[10] != 1){//laboratorio
    if(tabla[9,6] >= 3){
        dispo[10] = 1;
        respuesta = true;
        s_notibloqueo(10);
    }
}
if(dispo[11] != 1){//gobernacion
    if(totalescosas[1] > 15){
        dispo[11] = 1;
        respuesta = true;
        s_notibloqueo(11);
    }
}
if(dispo[12] != 1){//cuartel
    if(tabla[11,6] >= 1){
        dispo[12] = 1;
        respuesta = true;
        s_notibloqueo(12);
    }
}
if(dispo[13] != 1){//estacion
    if(tabla[8,6] >= 3){
        dispo[13] = 1;
        respuesta = true;
        s_notibloqueo(13);
    }
}
if(dispo[15] != 1){//palomera
    if(tabla[14,6] >= 8){
        dispo[15] = 1;
        respuesta = true;
        s_notibloqueo(15);
    }
}
if(dispo[16] != 1){//casa
    if(tabla[14,6] >= 4){
        dispo[16] = 1;
        respuesta = true;
        s_notibloqueo(16);
    }
}
if(dispo[17] != 1){//doblecasa
    if(tabla[16,6] >= 4){
        dispo[17] = 1;
        respuesta = true;
        s_notibloqueo(17);
    }
}
if(dispo[18] != 1){//casota
    if(tabla[17,6] >= 4){
        dispo[18] = 1;
        respuesta = true;
        s_notibloqueo(18);
    }
}
if(dispo[19] != 1){//mansion
    if(tabla[20,6] >= 8){
        dispo[19] = 1;
        respuesta = true;
        s_notibloqueo(19);
    }
}
if(dispo[20] != 1){//condominio
    if(tabla[18,6] >= 4){
        dispo[20] = 1;
        respuesta = true;
        s_notibloqueo(20);
    }
}
if(dispo[21] != 1){//edificio
    if(tabla[20,6] >= 4){
        dispo[21] = 1;
        respuesta = true;
        s_notibloqueo(21);
    }
}
if(dispo[22] != 1){//futurista
    if(tabla[19,6] >= 2 and tabla[10,6] >= 1){
        dispo[22] = 1;
        respuesta = true;
        s_notibloqueo(22);
    }
}
if(dispo[23] != 1){//exotica
    if(tabla[31,6] >= 4){
        dispo[23] = 1;
        respuesta = true;
        s_notibloqueo(23);
    }
}
if(dispo[24] != 1){//subterranea
    if(tabla[25,6] >= 4){
        dispo[24] = 1;
        respuesta = true;
        s_notibloqueo(24);
    }
}
if(dispo[25] != 1){//guarida
    if(tabla[14,6] >= 9){
        dispo[25] = 1;
        respuesta = true;
        s_notibloqueo(25);
    }
}
if(dispo[26] != 1){//hotel
    if(tabla[21,6] >= 4){
        dispo[26] = 1;
        respuesta = true;
        s_notibloqueo(26);
    }
}
if(dispo[27] != 1){//aeropuerto
    if(tabla[26,6] >= 1 and tabla[33,6] >= 1){
        dispo[27] = 1;
        respuesta = true;
        s_notibloqueo(27);
    }
}
if(dispo[28] != 1){//cultivo
    if(tabla[34,6] >= 1){
        dispo[28] = 1;
        respuesta = true;
        s_notibloqueo(28);
    }
}
if(dispo[29] != 1){//restaurante
    if(tabla[28,6] >= 1){
        dispo[29] = 1;
        respuesta = true;
        s_notibloqueo(29);
    }
}
if(dispo[30] != 1){//parque
    if(totalescosas[1] > 25){
        dispo[30] = 1;
        respuesta = true;
        s_notibloqueo(30);
    }
}
if(dispo[31] != 1){//cementerio
    if(totalescosas[0] > 100){
        dispo[31] = 1;
        respuesta = true;
        s_notibloqueo(31);
    }
}
if(dispo[32] != 1){//dinoparque
    if(tabla[30,6] >= 4){
        dispo[32] = 1;
        respuesta = true;
        s_notibloqueo(32);
    }
}
if(dispo[33] != 1){//comunicacion
    if(tabla[9,6] >= 1 and tabla[5,6] >= 2){
        dispo[33] = 1;
        respuesta = true;
        s_notibloqueo(33);
    }
}
if(dispo[34] != 1){//acueducto
    if(tabla[36,6] >= 1){
        dispo[34] = 1;
        respuesta = true;
        s_notibloqueo(34);
    }
}
if(dispo[35] != 1){//basurero
    if(totalescosas[6] > 50){
        dispo[35] = 1;
        respuesta = true;
        s_notibloqueo(35);
    }
}
if(dispo[36] != 1){//turbina
    if(tabla[16,6] >= 1){
        dispo[36] = 1;
        respuesta = true;
        s_notibloqueo(36);
    }
}
if(dispo[37] != 1){//caldera
    if(tabla[36,6] >= 6 and tabla[9,6] >= 1){
        dispo[37] = 1;
        respuesta = true;
        s_notibloqueo(37);
    }
}
if(dispo[38] != 1){//mina
    if(tabla[15,6] >= 2){
        dispo[38] = 1;
        respuesta = true;
        s_notibloqueo(38);
    }
}

if(respuesta){
    s_logrado(5);
    var men, mun, tut;
    men = "";
    mun = 0;
    tut = 0;
    audio_play_sound(a_desbloqueo, 20, false);
    ini_open("config_omty.ini");
    for(i = 0; i < m_construcciones; i += 1){
        ini_write_string("avance", "d" + string(i), string(dispo[i]));
        men += string(dispo[i]);
        mun += dispo[i];
        tut++;
    }
    ini_write_string("avance", "antihack", md5_string_unicode(base64_encode(men) + "10001001110"));
    if(!ini_key_exists("configuracion", "poseto") and (tut/mun)>=0.75){
        ini_write_string("configuracion", "poseto", "1");
    }
    ini_close();
}
