var pasoalgo;
pasoalgo = false;
if(instance_exists(o_gobernacion)){
    switch(argument0){
        case "G":
            var lim;
            lim = 2 * tabla[12,6];
            if(fondos >= lim * nuevaunidad and lim > 0){
                if(instance_number(o_policia) <= lim * (tabla[12,1] - 1)){
                    fondos -= lim * nuevaunidad;
                    s_nuevaunidad(o_policia, lim);
                    s_nuevosmanes(0);
                    if(!audio_is_playing(a_llrefuerzos)){
                        audio_play_sound(a_llrefuerzos, 20, false);
                    }
                    pasoalgo = true;
                }
            }
        break;
        case "U":
            var lim;
            lim = 2 * tabla[3,6];
            if(fondos >= lim * nuevaunidad and lim > 0){
                if(instance_number(o_medico) <= lim * (tabla[3,1] - 1)){
                    fondos -= lim * nuevaunidad;
                    s_nuevaunidad(o_medico, lim);
                    s_nuevosmanes(1);
                    if(!audio_is_playing(a_llemergencia)){
                        audio_play_sound(a_llemergencia, 20, false);
                    }
                    pasoalgo = true;
                }
            }   
        break;
        case "L":
            var lim;
            lim = 2 * tabla[35,6];
            if(fondos >= lim * nuevaunidad and lim > 0){
                if(instance_number(o_limpiador) <= lim * (tabla[35,1] - 1)){
                    fondos -= lim * nuevaunidad;
                    s_nuevaunidad(o_limpiador, lim);
                    s_nuevosmanes(2);
                    if(!audio_is_playing(a_lllimpiar)){
                        audio_play_sound(a_lllimpiar, 20, false);
                    }
                    pasoalgo = true;
                }
            }
        break;
    }
}
return(pasoalgo);
