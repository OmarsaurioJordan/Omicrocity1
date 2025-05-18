var aux, sngr, snra;
snra = true;
aux = instance_create(argument0.x, argument0.y, o_basura);
sngr = argument1;

switch(object_get_name(argument0.object_index)){
    case "o_empresario":
        aux.clase = 8; break;
    case "o_contador":
        aux.clase = 28; break;
    case "o_abogado":
        aux.clase = 30; break;
    case "o_antenaman":
        aux.clase = 26; break;
    case "o_cocinero":
        aux.clase = 27; break;
    case "o_minero":
        aux.clase = 9; break;
    case "o_ingeniero":
        aux.clase = 29; break;
    case "o_deportista":
        aux.clase = 2 + argument0.clase; break;
    case "o_musico":
        aux.clase = 4; break;
    case "o_brujo":
        instance_create(aux.x, aux.y, o_fantasma);
        aux.clase = 5; break;
    case "o_limpiador":
        aux.clase = 10; break;
    case "o_medico":
        aux.clase = 6; break;
    case "o_policia":
        aux.clase = 25; break;
    case "o_obrero":
        aux.clase = 9; break;
    case "o_agricultor":
        aux.clase = 33; break;
    case "o_servidor":
        aux.clase = 28; break;
    case "o_cantinero":
        aux.clase = 7; break;
    case "o_maestro":
        aux.clase = 12; break;
    case "o_terrorista":
        aux.clase = 23; break;
    case "o_lider":
        if(instance_exists(o_player)){
            o_player.x = argument0.x;
            o_player.y = argument0.y;}
        aux.clase = 14; break;
    case "o_ladron":
        aux.clase = 24; break;
    case "o_vendetickets":
        aux.clase = 11; break;
    case "o_vendedor":
        aux.clase = 11; break;
    case "o_cientifico":
        aux.clase = 13; break;
    case "o_cargador":
        aux.clase = 9; break;
    case "o_pobre":
        aux.clase = 15; break;
    case "o_promedio":
        aux.clase = 16; break;
    case "o_urbano":
        aux.clase = 17; break;
    case "o_rico":
        aux.clase = 18; break;
    case "o_futuro":
        aux.clase = 19; break;
    case "o_vampiro":
        aux.clase = 20; break;
    case "o_turista":
        aux.clase = 31; break;
    case "o_joven":
        aux.clase = 0; break;
    case "o_viejo":
        aux.clase = 1;
        snra = false;
        audio_play_sound_at(a_viejomuere, x, y, 0, m_noido, m_oido, 1, false, 5); break;
    case "o_invasor":
        aux.clase = 36; break;
    case "o_zombie":
        aux.clase = 34;
        snra = false;
        audio_play_sound_at(a_zombiemuere, aux.x, aux.y, 0, m_noido, m_oido, 1, false, 4); break;
    case "o_mecanoide":
        aux.clase = 38;
        sngr = false;
        snra = false;
        if(argument1){
            audio_play_sound_at(a_desarmandose, aux.x, aux.y, 0, m_noido, m_oido, 1, false, 7);
        } break;
    case "o_robot":
        aux.clase = 40;
        sngr = false;
        snra = false;
        if(argument1){
            audio_play_sound_at(a_desarmandose, aux.x, aux.y, 0, m_noido, m_oido, 1, false, 7);} break;
    case "o_alien":
        aux.clase = 35;
        snra = false;
        audio_play_sound_at(a_alienmuere, aux.x, aux.y, 0, m_noido, m_oido, 1, false, 6); break;
    case "o_nude":
        aux.clase= 21 + argument0.clase; break;
    case "o_explorador":
        aux.clase = 32; break;
    case "o_indio":
        aux.clase = 37; break;
    case "o_animal":
        aux.clase = 39;
        snra = false; break;
    case "o_prehistorico":
        snra = false;
        audio_play_sound(a_prehistorico, 18, false); break;
    case "o_heroe":
        aux.clase = 41; break;}

aux.vio = sngr;
if(snra){
    if(sngr){
        audio_play_sound_at(a_muerteviolenta, x, y, 0, m_noido, m_oido, 1, false, 3);
    }
    else{
        audio_play_sound_at(a_muertenfermo, x, y, 0, m_noido, m_oido, 1, false, 5);
    }
}

if(argument0.object_index == o_prehistorico){
    with(aux){
        instance_destroy();
    }
    instance_create(argument0.x, argument0.y, grancraneo);
}

with(argument0){
    instance_destroy();
}

if(choose(true,false,false)){
   s_logrado(7); 
}
