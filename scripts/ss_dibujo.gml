//id, num cuerpo
with(argument0){
    if(estado == "sigueme" or estado == "lameta"){
        draw_sprite(d_sombras, 7, x, y);
    }
    draw_sprite(d_sombras, 0, x, y);
    if(x == xprevious and y == yprevious){
        draw_sprite(d_patas, 0, x, y);
    }
    else{
        draw_sprite(d_patas,1 + paso, x, y);
    }
    if(estado == "preso"){
        draw_sprite(d_brazos, 8, x, y);
    }
    else if(estado == "trabajo" and object_index == o_cargador){
        draw_sprite(d_trabajos, 15, x, y);
    }
    if(object_index == o_deportista or object_index == o_nude){
        draw_sprite(d_cuerpos, argument1 + clase, x, y);
    }
    else{
        draw_sprite(d_cuerpos, argument1, x, y);
    }
    
    switch(estado){
        case "balon":
            draw_sprite(d_balon, 4 + brazo, x, y); break;
        case "celebra":
            draw_sprite(d_brazos, 4 + paso, x, y); break;
        case "aplaude":
            draw_sprite(d_brazos, 6 + paso, x, y); break;
        case "toca":
            draw_sprite(d_guitarra, 4 + brazo, x, y); break;
        case "lee":
            draw_sprite(d_ocios, 2, x, y); break;
        case "mantram":
            draw_sprite(d_brazos, 8, x, y); break;
        case "preso":
            break;
        case "compra":
            draw_sprite(d_brazos, 9, x, y);
            draw_sprite(d_comercio, 3, x, y); break;
        case "encaleta":
            if(object_index == o_ladron){
                draw_sprite(d_trabajos, 19, x, y);}
            else{
                draw_sprite(d_brazos, 9, x, y);
                draw_sprite(d_comercio, 3, x, y);} break;
        case "pesas":
            draw_sprite(d_pesas, brazo, x, y); break;
        case "globo":
            draw_sprite(d_brazos, 9, x, y);
            draw_sprite(d_ocios, 3, x, y); break;
        case "hebrio":
            draw_sprite(d_brazos, 9, x, y);
            draw_sprite(d_alimentos, 4 + paso, x, y); break;
        case "baila":
            draw_sprite(d_brazos, brazo, x, y); break;
        case "love":
            draw_sprite(d_ideas, 3, x, y - paso * 3);
            draw_sprite(d_brazos, 4, x, y); break;
        case "agua":
            draw_sprite(d_brazos, 9, x, y);
            draw_sprite(d_alimentos, 7 + paso, x, y); break;
        case "pelea":
            draw_sprite(d_ideas, 1, x, y - paso * 3);
            draw_sprite(d_brazos, 4, x, y); break;
        case "come":
            draw_sprite(d_alimentos, 2 + paso, x, y); break;
        case "protesta":
            draw_sprite(d_brazos, 9, x, y);
            draw_sprite(d_protesta, paso, x, y); break;
        case "habla":
            draw_sprite(d_ideas, 4, x, y - paso * 3);
            draw_sprite(d_brazos, 11, x, y); break;
        case "duerme":
            draw_sprite(d_ideas, 2, x, y - paso * 3);
            draw_sprite(d_brazos, 11, x, y); break;
        case "foto":
            draw_sprite(d_ocios, 4 + paso, x, y); break;
        case "celular":
            draw_sprite(d_ideas, 4, x, y - paso * 3);
            draw_sprite(d_brazos, 9, x, y);
            draw_sprite(d_ocios, 0, x, y); break;
        case "asecha": case "hulle":
            draw_sprite(d_brazos, 9, x, y);
            draw_sprite(d_trabajos, 20, x, y); break;
        case "bombaso":
            draw_sprite(d_brazos, 9, x, y);
            draw_sprite(d_trabajos, 7, x, y); break;
        case "panico":
            draw_sprite(d_ideas, 0, x, y - paso * 3);
            draw_sprite(d_brazos, 4, x, y); break;
        case "limpia":
            draw_sprite(d_trabajos, 16, x, y); break;
        case "cura":
            draw_sprite(d_trabajos, 9, x, y); break;
        case "defiende":
            draw_sprite(d_trabajos, 13, x, y); break;
        case "manual":
            draw_sprite(d_brazos, 9, x, y);
            draw_sprite(d_trabajos, 5, x, y); break;
        case "trabajo":
            switch(argument1){
                case 2:
                    draw_sprite(d_balon, brazo, x, y); break;
                case 4:
                    draw_sprite(d_guitarra, brazo, x, y); break;
                case 5:
                    draw_sprite(d_brazos, 9, x, y);
                    draw_sprite(d_baculo, brazo, x, y); break;
                case 7:
                    draw_sprite(d_brazos, 9, x, y);
                    draw_sprite(d_alimentos, 6, x, y); break;
                case 8:
                    draw_sprite(d_brazos, 10, x, y);
                    draw_sprite(d_trabajos, 0, x, y); break;
                case 9:
                    switch(object_get_name(object_index)){
                        case "o_minero":
                            draw_sprite(d_trabajos, 17, x, y); break;
                        case "o_obrero":
                            draw_sprite(d_brazos, 9, x, y);
                            draw_sprite(d_trabajos, 8, x, y); break;
                    }
                    break;
                case 11:
                    switch(object_get_name(object_index)){
                        case "o_vendetickets":
                            draw_sprite(d_brazos, 9, x, y);
                            draw_sprite(d_trabajos, 6, x, y); break;
                        case "o_vendedor":
                            draw_sprite(d_comercio, clase, x, y); break;
                    }
                    break;
                case 12:
                    draw_sprite(d_trabajos, 14, x, y); break;
                case 13:
                    draw_sprite(d_trabajos, 11 + clase, x, y); break;
                case 14:
                    draw_sprite(d_brazos, 9, x, y);
                    draw_sprite(d_trabajos, 5, x, y); break;
                case 26:
                    draw_sprite(d_brazos, 10, x, y);
                    draw_sprite(d_trabajos, 4, x, y); break;
                case 27:
                    draw_sprite(d_alimentos, paso, x, y); break;
                case 28:
                    switch(object_get_name(object_index)){
                        case "o_contador":
                            draw_sprite(d_brazos, 10, x, y);
                            draw_sprite(d_trabajos, 1, x, y); break;
                        case "o_servidor":
                            draw_sprite(d_brazos, 9, x, y);
                            draw_sprite(d_alimentos, 9, x, y); break;
                    }
                    break;    
                case 29:
                    draw_sprite(d_trabajos, 10, x, y); break;
                case 30:
                    draw_sprite(d_brazos, 10, x, y);
                    draw_sprite(d_trabajos, 3, x, y); break;
                case 33:
                    draw_sprite(d_trabajos, 18, x, y); break;
                default:
                    draw_sprite(d_brazos, 11, x, y); break;
            }
            break;
        case "sombrilla":
            draw_sprite(d_brazos, 9, x, y);
            switch(object_get_name(object_index)){
                case "o_pobre":
                    draw_sprite(d_sombrillas, 0, x, y); break;
                case "o_vampiro":
                    draw_sprite(d_sombrillas, 2, x, y); break;
                case "o_urbano":
                case "o_futurista":
                    draw_sprite(d_sombrillas, 4, x, y); break;
                case "o_turista":
                case "o_rico":
                    draw_sprite(d_sombrillas, 3, x, y); break;
                default:
                    draw_sprite(d_sombrillas, 1, x, y); break;
            }
            break;
        default:
            draw_sprite(d_brazos, 11, x, y); break;
    }
}
