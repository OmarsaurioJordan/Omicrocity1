//id
with(argument0){
    
    if(mobile){
        if(speed == 0){
            speed = choose(0, 0, 0, carrera);
            direction = irandom(359);
        }
        else{
            speed = choose(0, carrera, carrera, carrera);
            direction += irandom(90) - 45;
        }
        mobile = false;
    }
    
    if(object_is_ancestor(object_index, humano) or object_index == o_invasor){
        
        if(irandom(350) == 0){//probabilidad cagar
            if(x > 0){
                instance_create(x, y, o_basura);
                if(choose(true,false,false)){
                    s_logrado(16);
                }
            }
        }
        
        if(irandom(31) == 0){//volver a usar estacion
            deviaje = true;
        }
        
        switch(virus){
            case 0:
                var ttt;
                ttt = 750 - totalescosas[6];//probabilidad enfermarse
                if(ttt < 1){
                    ttt = 1;
                }
                if(irandom(ttt) == 0){
                    virus = 1;
                }
            break;
            case 1:
                if(irandom(31) == 0){//morir por virus comun o curarse
                    if(irandom(5) == 0){
                        s_matar(id, false);
                    }
                    else{
                        virus = 0;
                    }
                }
                else{
                    instance_create(x, y + 1, vomito);
                    audio_play_sound_at(a_virus, x, y, 0, m_noido, m_oido, 1, false, 3);
                }
            break;
            case 2:
                if(irandom(31) == 0){//morir por pandemia
                    s_matar(id, false);
                }
                else{
                    var aux;
                    aux = instance_create(x, y + 1, vomito);
                    aux.clase = true;
                    audio_play_sound_at(a_vomito, x, y, 0, m_noido, m_oido, 1, false, 2);
                    if(choose(true,false,false)){
                        s_logrado(30);
                    }
                }
            break;
        }
    }
    
    alarm[2] = cambiopasos + irandom(cambiopasos);
}
