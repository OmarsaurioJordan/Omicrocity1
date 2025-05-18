//tipo, instancia id, 0:importante 1:bulla
if(sonido>argument2){
    switch(argument0){
        //vocez
        case "liberado":
            audio_play_sound_on(argument1.emisor,a_liberado,false,12); break;
        case "encaletaciudadano":
            audio_play_sound_on(argument1.emisor,a_encaletaciudadano,false,12); break;
        case "encaletaladron":
            audio_play_sound_on(argument1.emisor,a_encaletaladron,false,12); break;
        case "refuerzos":
            if(!audio_is_playing(a_llrefuerzos)){
                audio_play_sound(a_llrefuerzos,20,false);} break;
        case "emergencia":
            if(!audio_is_playing(a_llemergencia)){
                audio_play_sound(a_llemergencia,20,false);} break;
        case "limpiar":
            if(!audio_is_playing(a_lllimpiar)){
                audio_play_sound(a_lllimpiar,20,false);} break;
        default:
            show_message("fallo: "+argument0);//quitar
            audio_play_sound(a_a,0,false); break;}}
