//id
with(argument0){
    switch(estado){
        case "toca":
            alarm[3] = room_speed * 5;
            switch(irandom(3)){
                case 0: audio_play_sound_at(a_acustica0, x, y, 0, m_noido, m_oido, 1, false, 18); break;
                case 1: audio_play_sound_at(a_acustica1, x, y, 0, m_noido, m_oido, 1, false, 18); break;
                case 2: audio_play_sound_at(a_acustica2, x, y, 0, m_noido, m_oido, 1, false, 18); break;
                case 3: audio_play_sound_at(a_acustica3, x, y, 0, m_noido, m_oido, 1, false, 18); break;
            }
        break;
        case "balon":
            alarm[3] = room_speed * 4;
            audio_play_sound_at(a_balon, x, y, 0, m_noido, m_oido, 1, false, 5);
        break;
        case "trabajo":
            switch(object_get_name(object_index)){
                case "o_musico":
                    alarm[3] = room_speed * 3;
                    switch(irandom(3)){
                        case 0: audio_play_sound_at(a_electrica0, x, y, 0, m_noido, m_oido, 1, false, 19); break;
                        case 1: audio_play_sound_at(a_electrica1, x, y, 0, m_noido, m_oido, 1, false, 19); break;
                        case 2: audio_play_sound_at(a_electrica2, x, y, 0, m_noido, m_oido, 1, false, 19); break;
                        case 3: audio_play_sound_at(a_electrica3, x, y, 0, m_noido, m_oido, 1, false, 19); break;
                    }
                break;
                case "o_deportista":
                    alarm[3] = room_speed * 4;
                    audio_play_sound_at(a_balon, x, y, 0, m_noido, m_oido, 1, false, 5);
                break;
                case "o_brujo":
                    alarm[3] = room_speed * (4 + irandom(4));
                    audio_play_sound_at(a_brujo, x, y, 0, m_noido, m_oido, 1, false, 4);
                break;
                case "o_maestro":
                    alarm[3] = room_speed * 5;
                    audio_play_sound_at(a_escribe, x, y, 0, m_noido, m_oido, 1, false, 5);
                break;
                case "o_vendedor":
                    alarm[3] = room_speed * (2 + irandom(2));
                    audio_play_sound_at(a_vendedor, x, y, 0, m_noido, m_oido, 1, false, 7);
                break;
            }
        break;
        case "duerme":
            alarm[3] = room_speed * 2;
            audio_play_sound_at(a_duerme, x, y, 0, m_noido, m_oido, 1, false, 4);
        break;
        case "protesta":
            alarm[3] = room_speed * (2 + irandom(3));
            if(irandom(1) == 0){
                audio_play_sound_at(a_protesta1, x, y, 0, m_noido, m_oido, 1, false, 3);
            }
            else{
                audio_play_sound_at(a_protesta2, x, y, 0, m_noido, m_oido, 1, false, 3);
            }
        break;
        case "mantram":
            alarm[3] = room_speed * (2 + irandom(2));
            audio_play_sound_at(a_mantram, x, y, 0, m_noido, m_oido, 1, false, 3);
        break;
        case "pesas":
            alarm[3] = room_speed * 2;
            audio_play_sound_at(a_ejercicio, x, y, 0, m_noido, m_oido, 1, false, 6);
        break;
        case "celebra":
            alarm[3] = room_speed * (2 + irandom(2));
            audio_play_sound_at(a_celebra, x, y, 0, m_noido, m_oido, 1, false, 4);
        break;
        case "aplaude":
            alarm[3] = room_speed * (2 + irandom(2));
            audio_play_sound_at(a_aplaude, x, y, 0, m_noido, m_oido, 1, false, 4);
        break;
        case "foto":
            alarm[3] = room_speed * 2;
            audio_play_sound_at(a_foto, x, y, 0, m_noido, m_oido, 1, false, 7);
        break;
        case "lee":
            alarm[3] = room_speed * 8;
            audio_play_sound_at(a_libro, x, y, 0, m_noido, m_oido, 1, false, 4);
        break;
        case "jefe":
            alarm[3] = room_speed * (3 + irandom(4));
            if(object_index == o_empresario){
                audio_play_sound_at(a_empresario, x, y, 0, m_noido, m_oido, 1, false, 9);
            }
            else{
                audio_play_sound_at(a_ordenlider, x, y, 0, m_noido, m_oido, 1, false, 7);
            }
        break;
        case "autonomo":
            switch(object_get_name(object_index)){
                case "o_vendetickets":
                    alarm[3] = room_speed * (2 + irandom(3));
                    audio_play_sound_at(a_ticket, x, y, 0, m_noido, m_oido, 1, false, 4);
                break;
                case "o_cocinero":
                    alarm[3] = room_speed * (3 + irandom(2));
                    audio_play_sound_at(a_ollas, x, y, 0, m_noido, m_oido, 1, false, 4);
                break;
                case "o_minero":
                    alarm[3] = room_speed * (7 + irandom(1));
                    audio_play_sound_at(a_minero, x, y, 0, m_noido, m_oido, 1, false, 5);
                break;
                case "o_agricultor":
                    alarm[3] = room_speed * (2 + irandom(3));
                    audio_play_sound_at(a_agricultor, x, y, 0, m_noido, m_oido, 1, false, 6);
                break;
                case "o_ingeniero":
                    alarm[3] = room_speed * (5 + irandom(5));
                    audio_play_sound_at(a_ingeniero, x, y, 0, m_noido, m_oido, 1, false, 3);
                break;
                case "o_servidor":
                    alarm[3] = room_speed * (3 + irandom(3));
                    audio_play_sound_at(a_servidor, x, y, 0, m_noido, m_oido, 1, false, 4);
                break;
                case "o_cientifico":
                    alarm[3] = room_speed * (3 + irandom(4));
                    audio_play_sound_at(a_cientifico, x, y, 0, m_noido, m_oido, 1, false, 5);
                break;
            }
        break;
    }
}
