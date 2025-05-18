//id
with(argument0){
    if(object_index==o_invasor){
        s_sonido("invasor",x,y,true,1);}
    else{
    switch(estado){
        case "trabajo":
            switch(object_get_name(object_index)){
                case "o_brujo":
                    s_sonido("brujo",x,y,true,1); break;
                case "o_abogado":
                    s_sonido("abogado",x,y,true,1); break;
                case "o_servidor":
                    s_sonido("servidor",x,y,true,1); break;
                case "o_vendetickets":
                    s_sonido("ticket",x,y,true,1); break;
                case "o_vendedor":
                    s_sonido("vendedor",x,y,true,1); break;
                case "o_ingeniero":
                    s_sonido("ingeniero",x,y,true,1); break;
                case "o_agricultor":
                    s_sonido("agricultor",x,y,true,1); break;}
                break;
        case "protesta":
            s_sonido("protesta",x,y,true,1); break;
        case "libre":
            switch(object_get_name(object_index)){
                case "o_turista":
                    s_sonido("turistalibre",x,y,true,1); break;
                case "o_indio":
                    s_sonido("indio",x,y,true,1); break;
                case "o_explorador":
                    s_sonido("exploradorlibre",x,y,true,1); break;}
            break;}}}
