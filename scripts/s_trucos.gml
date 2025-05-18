var chi, orden, num, nh, nw;
if(file_exists("trucos.txt")){
    chi = file_text_open_read("trucos.txt");
    audio_play_sound(a_okey, 20, false);
    
    while(!file_text_eof(chi)){
    orden = string_lower(file_text_read_string(chi));
    file_text_readln(chi);
    num = abs(round(file_text_read_real(chi)));
    if(num > 9999){
        num = 9999;}
    file_text_readln(chi);
    
    switch(orden){
        case "basofias limpiensen":
            with(o_basura){
                instance_destroy();}
        break;
        case "todos al suelo":
            with(movil){
                s_matar(id, false);}
        break;
        case "leer death note":
            repeat(num){
                nw = choose(0, 0, 0, 0, 0, 0, 1, 1, 2);
                if(nw == 0){
                    if(instance_exists(humano)){
                        nw = instance_number(humano) - 1;
                        nh = instance_find(humano, irandom(nw));
                        s_matar(nh, false);}
                }
                else if(nw == 1){
                    if(instance_exists(o_joven)){
                        nw = instance_number(o_joven) - 1;
                        nh = instance_find(o_joven, irandom(nw));
                        s_matar(nh, false);}
                }
                else{
                    if(instance_exists(o_viejo)){
                        nw = instance_number(o_viejo) - 1;
                        nh = instance_find(o_viejo, irandom(nw));
                        s_matar(nh, false);}
                }
            }
        break;
        case "tosan achuuu":
            if(instance_exists(ciudadano)){
                nw = instance_number(ciudadano) - 1;
                repeat(num){
                    nh = instance_find(ciudadano, irandom(nw));
                    nh.virus = 1;
                }
            }
        break;
        case "gripa sangrante pa todos":
            if(instance_exists(ciudadano)){
                nw = instance_number(ciudadano) - 1;
                repeat(num){
                    nh = instance_find(ciudadano, irandom(nw));
                    nh.virus = 2;
                }
            }
        break;
        case "os desinteraran":
            repeat(num){
                nh = (room_width * 0.5) + (room_height * 0.25);
                nw = irandom(359);
                instance_create(room_width * 0.5 + lengthdir_x(nh, nw), room_height * 0.5 + lengthdir_y(nh, nw), o_ovni);
            }
        break;
        case "se inicio el conflicto":
            repeat(num){
                nh = (room_width * 0.5) + (room_height * 0.25);
                nw = irandom(359);
                instance_create(room_width * 0.5 + lengthdir_x(nh, nw), room_height * 0.5 + lengthdir_y(nh, nw), o_pirata);
            }
        break;
        case "no podian faltar":
            repeat(num){
                instance_create(irandom(room_width), irandom(room_height), o_zombie);
            }
        break;
        case "don exterminator":
            nw = irandom(room_width);
            nh = irandom(room_height);
            repeat(num){
                instance_create(nw, nh, o_mecanoide);
            }
        break;
        case "cascaras con arduino":
            repeat(num){
                instance_create(irandom(room_width), irandom(room_height), o_robot);
            }
        break;
        case "la ai se toma la fabrica":
            nw = -1;
            repeat(num){
                if(instance_exists(o_fabrica)){
                    nw = instance_find(o_fabrica, irandom(instance_number(o_fabrica) - 1));
                    nw.alarm[2] = 1;
                }
            }
            if(nw != -1){
                audio_play_sound(a_fabricam, 20, false);
                s_notificacion(9, "");
            }
        break;
        case "history tenia razon":
            repeat(num){
                nh = (room_width * 0.5) + (room_height * 0.25);
                nw = irandom(359);
                instance_create(room_width * 0.5 + lengthdir_x(nh, nw), room_height * 0.5 + lengthdir_y(nh, nw), o_abducidor);
            }
        break;
        case "no es tan demoniaco":
            repeat(num){
                instance_create(irandom(room_width), irandom(room_height), o_demonio);
            }
        break;
        case "se les salieron":
            repeat(num){
                instance_create(irandom(room_width), irandom(room_height), o_nude);
            }
        break;
        case "lacras everywhere":
            repeat(num){
                if(!s_crearata(true)){
                    break;}
            }
        break;
        case "explosiones controladas":
            repeat(num){
                instance_create(irandom(room_width), irandom(room_height), o_terrorista);
            }
        break;
        case "bueno y eso que es":
            repeat(num){
                s_creanimal(true, true);
            }
        break;
        case "parecen picapiedras":
            repeat(num){
                instance_create(irandom(room_width), irandom(room_height), o_turista);
            }
        break;
        case "mochileros salvajes":
            repeat(num){
                instance_create(irandom(room_width), irandom(room_height), o_explorador);
            }
        break;
        case "de parte de gaia":
            repeat(num){
                nh = (room_width * 0.5) + (room_height * 0.25);
                nw = irandom(359);
                instance_create(room_width * 0.5 + lengthdir_x(nh, nw), room_height * 0.5 + lengthdir_y(nh, nw), o_comanche);
            }
        break;
        case "ni que fuera nuclear":
            var i;
            repeat(num){
                i = instance_find(bloques, irandom(instance_number(bloques) - 1));
                nh = (room_width * 0.5) + (room_height * 0.25);
                nw = irandom(359);
                aux = instance_create(room_width * 0.5 + lengthdir_x(nh, nw), room_height * 0.5 + lengthdir_y(nh, nw), o_bombardero);
                aux.meta = i;
            }
        break;
        case "casi es godzilla":
            repeat(num){
                instance_create(irandom(room_width), irandom(room_height), o_prehistorico);
            }
        break;
        case "ni dc ni marvel":
            repeat(num){
                instance_create(irandom(room_width), irandom(room_height), o_heroe);
            }
        break;
        case "llamen la tomba":
            repeat(num){
                instance_create(irandom(room_width), irandom(room_height), o_policia);
            }
        break;
        case "jeringas puntudas":
            repeat(num){
                instance_create(irandom(room_width), irandom(room_height), o_medico);
            }
        break;
        case "escobas escobas":
            repeat(num){
                instance_create(irandom(room_width), irandom(room_height), o_limpiador);
            }
        break;
        case "agua torrencial":
            if(!instance_exists(lalluvia)){
                instance_create(0, 0, lalluvia);
            }
        break;
        case "mayor valor sera todo mas calmo (19 standard)":
            hardcore = num;
        break;
        case "saluden al caos":
            hardcore = 6;
        break;
        case "lo que sea pej":
            s_acontecimiento(true);
        break;
        case "plata dinero money":
            s_plata(num);
        break;
        case "ciudad sandbox":
            var i;
            for(i = 0; i < m_construcciones; i += 1){
                dispo[i] = 1;
            }
        break;
        case "el barbudo rojo":
            if(instance_exists(o_anual)){
                if(instance_find(o_anual, 0).clase == 1 and instance_number(o_anual) == 1){
                    instance_create(room_width * 0.5, room_height * 0.5, o_anual);
                }
            }
            else{
                instance_create(room_width * 0.5, room_height * 0.5, o_anual);
            }
        break;
        case "miren es jack":
            if(instance_exists(o_anual)){
                if(instance_find(o_anual, 0).clase == 0 and instance_number(o_anual) == 1){
                    aux = instance_create(room_width * 0.5, room_height * 0.5, o_anual);
                    aux.clase = 1;
                }
            }
            else{
                aux = instance_create(room_width * 0.5, room_height * 0.5, o_anual);
                aux.clase = 1;
            }
        break;
        case "fabrica shutdown":
            with(o_fabrica){
                alarm[2] = -1;
            }
        break;
        case "empareje las tierras":
            with(o_hueco){
                instance_destroy();
            }
        break;
        case "omicrocity dame los trucos":
            if(!file_exists("trucos_help.txt")){
                var chuuu;
                chuuu = file_text_open_write("trucos_help.txt");
                file_text_write_string(chuuu, "En el modo menu de Omicrocity pulse F9 (cada 10s disponible),");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "cargara el truco contenido en el archivo:");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "%localappdata%/omicorcity/trucos.txt");
                file_text_writeln(chuuu);
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "un truco son dos lineas:");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "keyword (palabras listadas a continuacion (hasta los : ))");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "num (numero o vacio obligatorio)");
                file_text_writeln(chuuu);
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "omicrocity dame los trucos: crea este archivo");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "basofias limpiensen: elimina toda la basura");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "todos al suelo: mata a todo el mundo");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "leer death note: mata num ciudadanos");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "tosan achuuu: enferma num ciudadanos");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "gripa sangrante pa todos: enferma gravemente num ciudadanos");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "os desinteraran: llama num naves alienigenas invasoras");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "se inicio el conflicto: llama num naves piratas invasoras");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "no podian faltar: crea num zombies");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "don exterminator: crea num robots matones");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "cascaras con arduino: crea num robots pacificos");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "la ai se toma la fabrica: pone num fabricas a producir robots matones");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "history tenia razon: llama num ovnis exploradores");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "no es tan demoniaco: invoca num demonios");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "se les salieron: crea num nudistas");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "lacras everywhere: crea num ladrones");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "explosiones controladas: crea num terroristas");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "bueno y eso que es: crea num animales salvajes");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "parecen picapiedras: crea num turistas");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "mochileros salvajes: crea num exploradores");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "de parte de gaia: llama num tribus indigenas");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "ni que fuera nuclear: llama num naves bombarderas");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "casi es godzilla: crea num monstruos gigantes prehistoricos");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "ni dc ni marvel: crea num super heroes");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "llamen la tomba: crea num policias");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "jeringas puntudas: crea num medicos");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "escobas escobas: crea num limpiadores");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "agua torrencial: hace llover");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "mayor valor sera todo mas calmo (19 standard): num inversa, probabilidad de eventos raros");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "saluden al caos: alta probabilidad de eventos raros (6)");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "lo que sea pej: dispara algun evento raro");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "plata dinero money: pone num cantidad de dinero");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "ciudad sandbox: desbloquea todos los edificios");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "el barbudo rojo: crea a santa claus");
                file_text_writeln(chuuu);
                file_text_write_string(chuuu, "miren es jack: crea a jack el rey calabaza");
                file_text_close(chuuu);
                file_text_write_string(chuuu, "fabrica shutdown: desactiva la creacion de robots matones en las fabricas");
                file_text_close(chuuu);
                file_text_write_string(chuuu, "empareje las tierras: elimina todos los huecos de las minas");
                file_text_close(chuuu);
            }
        break;
    }}
    file_text_close(chi);
}
else{
    chi = file_text_open_write("trucos.txt");
    file_text_write_string(chi, "keyword");
    file_text_writeln(chi);
    file_text_write_string(chi, "num (number or void)");
    file_text_close(chi);
}
