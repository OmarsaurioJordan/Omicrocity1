//nombre para el archivo, mostrar okey

if(argument0 != "" and string_count(".ini", argument0) == 0){
    if(file_exists("omty_" + argument0 + ".ini")){
        file_delete("omty_" + argument0 + ".ini");
    }
    ini_open("omty_" + argument0 + ".ini");
    
    var i, kk, aux, bebes, grandes, acumulador;
    bebes = 0;
    grandes = 0;
    acumulador = "";
    
    acumulador += "coliseo:";
    for(i = 0; i < instance_number(o_coliseo); i += 1){
        aux = instance_find(o_coliseo, i);
        ini_write_string("coliseo", "x" + string(i), string(aux.x));
        ini_write_string("coliseo", "y" + string(i), string(aux.y));
        bebes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "teatro:";
    for(i = 0; i < instance_number(o_teatro); i += 1){
        aux = instance_find(o_teatro, i);
        ini_write_string("teatro", "x" + string(i), string(aux.x));
        ini_write_string("teatro", "y" + string(i), string(aux.y));
        bebes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "templo:";
    for(i = 0; i < instance_number(o_templo); i += 1){
        aux = instance_find(o_templo, i);
        ini_write_string("templo", "x" + string(i), string(aux.x));
        ini_write_string("templo", "y" + string(i), string(aux.y));
        bebes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "hospital:";
    for(i = 0; i < instance_number(o_hospital); i += 1){
        aux = instance_find(o_hospital, i);
        ini_write_string("hospital", "x" + string(i), string(aux.x));
        ini_write_string("hospital", "y" + string(i), string(aux.y));
        bebes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "casino:";
    for(i = 0; i < instance_number(o_casino); i += 1){
        aux = instance_find(o_casino, i);
        ini_write_string("casino", "x" + string(i), string(aux.x));
        ini_write_string("casino", "y" + string(i), string(aux.y));
        bebes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "empresa:";
    for(i = 0; i < instance_number(o_empresa); i += 1){
        aux = instance_find(o_empresa, i);
        ini_write_string("empresa", "x" + string(i), string(aux.x));
        ini_write_string("empresa", "y" + string(i), string(aux.y));
        bebes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "fabrica:";
    for(i = 0; i < instance_number(o_fabrica); i += 1){
        aux = instance_find(o_fabrica, i);
        ini_write_string("fabrica", "x" + string(i), string(aux.x));
        ini_write_string("fabrica", "y" + string(i), string(aux.y));
        acumulador += string(aux.x) + string(aux.y);
        if(aux.alarm[2] != -1){
            ini_write_string("fabrica", "m" + string(i), "1");
            acumulador += "1";
        }
        else{
            ini_write_string("fabrica", "m" + string(i), "0");
            acumulador += "0";
        }
        bebes += s_numgente(aux);
    }
    
    acumulador += "puerto:";
    for(i = 0; i < instance_number(o_puerto); i += 1){
        aux = instance_find(o_puerto, i);
        ini_write_string("puerto", "x" + string(i), string(aux.x));
        ini_write_string("puerto", "y" + string(i), string(aux.y));
        bebes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "comercio:";
    for(i = 0; i < instance_number(o_comercio); i += 1){
        aux = instance_find(o_comercio, i);
        ini_write_string("comercio", "x" + string(i), string(aux.x));
        ini_write_string("comercio", "y" + string(i), string(aux.y));
        bebes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "universidad:";
    for(i = 0; i < instance_number(o_universidad); i += 1){
        aux = instance_find(o_universidad, i);
        ini_write_string("universidad", "x" + string(i), string(aux.x));
        ini_write_string("universidad", "y" + string(i), string(aux.y));
        bebes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "laboratorio:";
    for(i = 0; i < instance_number(o_laboratorio); i += 1){
        aux = instance_find(o_laboratorio, i);
        ini_write_string("laboratorio", "x" + string(i), string(aux.x));
        ini_write_string("laboratorio", "y" + string(i), string(aux.y));
        bebes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "gobernacion:";
    if(instance_exists(o_gobernacion)){
        aux = instance_find(o_gobernacion,0);
        ini_write_string("gobernacion","x", string(aux.x));
        ini_write_string("gobernacion","y", string(aux.y));
        bebes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "cuartel:";
    for(i = 0; i < instance_number(o_cuartel); i += 1){
        aux = instance_find(o_cuartel, i);
        ini_write_string("cuartel", "x" + string(i), string(aux.x));
        ini_write_string("cuartel", "y" + string(i), string(aux.y));
        bebes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "estacion:";
    for(i = 0; i < instance_number(o_estacion); i += 1){
        aux = instance_find(o_estacion, i);
        ini_write_string("estacion", "x" + string(i), string(aux.x));
        ini_write_string("estacion", "y" + string(i), string(aux.y));
        bebes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "choza:";
    for(i = 0; i < instance_number(o_choza); i += 1){
        aux = instance_find(o_choza, i);
        ini_write_string("choza", "x" + string(i), string(aux.x));
        ini_write_string("choza", "y" + string(i), string(aux.y));
        grandes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "palomera:";
    for(i = 0; i < instance_number(o_palomera); i += 1){
        aux = instance_find(o_palomera, i);
        ini_write_string("palomera", "x" + string(i), string(aux.x));
        ini_write_string("palomera", "y" + string(i), string(aux.y));
        grandes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "casa:";
    for(i = 0; i < instance_number(o_casa); i += 1){
        aux = instance_find(o_casa, i);
        ini_write_string("casa", "x" + string(i), string(aux.x));
        ini_write_string("casa", "y" + string(i), string(aux.y));
        grandes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "doblecasa:";
    for(i = 0; i < instance_number(o_doblecasa); i += 1){
        aux = instance_find(o_doblecasa, i);
        ini_write_string("doblecasa", "x" + string(i), string(aux.x));
        ini_write_string("doblecasa", "y" + string(i), string(aux.y));
        grandes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "casota:";
    for(i = 0; i < instance_number(o_casota); i += 1){
        aux = instance_find(o_casota, i);
        ini_write_string("casota", "x" + string(i), string(aux.x));
        ini_write_string("casota", "y" + string(i), string(aux.y));
        grandes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "mansion:";
    for(i = 0; i < instance_number(o_mansion); i += 1){
        aux = instance_find(o_mansion, i);
        ini_write_string("mansion", "x" + string(i), string(aux.x));
        ini_write_string("mansion", "y" + string(i), string(aux.y));
        grandes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "condominio:";
    for(i = 0; i < instance_number(o_condominio); i += 1){
        aux = instance_find(o_condominio, i);
        ini_write_string("condominio", "x" + string(i), string(aux.x));
        ini_write_string("condominio", "y" + string(i), string(aux.y));
        grandes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "edificio:";
    for(i = 0; i < instance_number(o_edificio); i += 1){
        aux = instance_find(o_edificio, i);
        ini_write_string("edificio", "x" + string(i), string(aux.x));
        ini_write_string("edificio", "y" + string(i), string(aux.y));
        grandes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "futurista:";
    for(i = 0; i < instance_number(o_futurista); i += 1){
        aux = instance_find(o_futurista, i);
        ini_write_string("futurista", "x" + string(i), string(aux.x));
        ini_write_string("futurista", "y" + string(i), string(aux.y));
        grandes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "exotica:";
    for(i = 0; i < instance_number(o_exotica); i += 1){
        aux = instance_find(o_exotica, i);
        ini_write_string("exotica", "x" + string(i), string(aux.x));
        ini_write_string("exotica", "y" + string(i), string(aux.y));
        grandes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "subterranea:";
    for(i = 0; i < instance_number(o_subterranea); i += 1){
        aux = instance_find(o_subterranea, i);
        ini_write_string("subterranea", "x" + string(i), string(aux.x));
        ini_write_string("subterranea", "y" + string(i), string(aux.y));
        bebes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "guarida:";
    for(i = 0; i < instance_number(o_guarida); i += 1){
        aux = instance_find(o_guarida, i);
        ini_write_string("guarida", "x" + string(i), string(aux.x));
        ini_write_string("guarida", "y" + string(i), string(aux.y));
        bebes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "hotel:";
    for(i = 0; i < instance_number(o_hotel); i += 1){
        aux = instance_find(o_hotel, i);
        ini_write_string("hotel", "x" + string(i), string(aux.x));
        ini_write_string("hotel", "y" + string(i), string(aux.y));
        bebes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "aeropuerto:";
    for(i = 0; i < instance_number(o_aeropuerto); i += 1){
        aux = instance_find(o_aeropuerto, i);
        ini_write_string("aeropuerto", "x" + string(i), string(aux.x));
        ini_write_string("aeropuerto", "y" + string(i), string(aux.y));
        bebes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "cultivo:";
    for(i = 0; i < instance_number(o_cultivo); i += 1){
        aux = instance_find(o_cultivo, i);
        ini_write_string("cultivo", "x" + string(i), string(aux.x));
        ini_write_string("cultivo", "y" + string(i), string(aux.y));
        bebes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "restaurante:";
    for(i = 0; i < instance_number(o_restaurante); i += 1){
        aux = instance_find(o_restaurante, i);
        ini_write_string("restaurante", "x" + string(i), string(aux.x));
        ini_write_string("restaurante", "y" + string(i), string(aux.y));
        bebes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "parque:";
    for(i = 0; i < instance_number(o_parque); i += 1){
        aux = instance_find(o_parque, i);
        ini_write_string("parque", "x" + string(i), string(aux.x));
        ini_write_string("parque", "y" + string(i), string(aux.y));
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "cementerio:";
    for(i = 0; i < instance_number(o_cementerio); i += 1){
        aux = instance_find(o_cementerio, i);
        ini_write_string("cementerio", "x" + string(i), string(aux.x));
        ini_write_string("cementerio", "y" + string(i), string(aux.y));
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "dinoparque:";
    for(i = 0; i < instance_number(o_dinoparque); i += 1){
        aux = instance_find(o_dinoparque, i);
        ini_write_string("dinoparque", "x" + string(i), string(aux.x));
        ini_write_string("dinoparque", "y" + string(i), string(aux.y));
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "comunicacion:";
    for(i = 0; i < instance_number(o_comunicacion); i += 1){
        aux = instance_find(o_comunicacion, i);
        ini_write_string("comunicacion", "x" + string(i), string(aux.x));
        ini_write_string("comunicacion", "y" + string(i), string(aux.y));
        bebes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "acueducto:";
    for(i = 0; i < instance_number(o_acueducto); i += 1){
        aux = instance_find(o_acueducto, i);
        ini_write_string("acueducto", "x" + string(i), string(aux.x));
        ini_write_string("acueducto", "y" + string(i), string(aux.y));
        bebes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "basurero:";
    for(i = 0; i < instance_number(o_basurero); i += 1){
        aux = instance_find(o_basurero, i);
        ini_write_string("basurero", "x" + string(i), string(aux.x));
        ini_write_string("basurero", "y" + string(i), string(aux.y));
        bebes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "turbina:";
    for(i = 0; i < instance_number(o_turbina); i += 1){
        aux = instance_find(o_turbina, i);
        ini_write_string("turbina", "x" + string(i), string(aux.x));
        ini_write_string("turbina", "y" + string(i), string(aux.y));
        bebes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "caldera:";
    for(i = 0; i < instance_number(o_caldera); i += 1){
        aux = instance_find(o_caldera, i);
        ini_write_string("caldera", "x" + string(i), string(aux.x));
        ini_write_string("caldera", "y" + string(i), string(aux.y));
        bebes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "mina:";
    for(i = 0; i < instance_number(o_mina); i += 1){
        aux = instance_find(o_mina, i);
        ini_write_string("mina", "x" + string(i), string(aux.x));
        ini_write_string("mina", "y" + string(i), string(aux.y));
        bebes += s_numgente(aux);
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "hueco:";
    for(i = 0; i < instance_number(o_hueco); i += 1){
        aux = instance_find(o_hueco, i);
        ini_write_string("hueco", "x" + string(i), string(aux.x));
        ini_write_string("hueco", "y" + string(i), string(aux.y));
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "piramide:";
    for(i = 0; i < instance_number(o_piramide); i += 1){
        aux = instance_find(o_piramide, i);
        ini_write_string("piramide", "x" + string(i), string(aux.x));
        ini_write_string("piramide", "y" + string(i), string(aux.y));
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "arbol:";
    for(i = 0; i < instance_number(o_arbol); i += 1){
        aux = instance_find(o_arbol, i);
        ini_write_string("arbol", "x" + string(i), string(aux.x));
        ini_write_string("arbol", "y" + string(i), string(aux.y));
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "calle:";
    for(i = 0; i < instance_number(o_calle); i += 1){
        aux = instance_find(o_calle, i);
        ini_write_string("calle", "x" + string(i), string(aux.x));
        ini_write_string("calle", "y" + string(i), string(aux.y));
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "polucion:";
    for(i = 0; i < instance_number(o_basura); i += 1){
        aux = instance_find(o_basura, i);
        ini_write_string("polucion", "x" + string(i), string(aux.x));
        ini_write_string("polucion", "y" + string(i), string(aux.y));
        acumulador += string(aux.x) + string(aux.y);
        acumulador += string(aux.clase);
        if(aux.clase != -1){
            ini_write_string("polucion", "c" + string(i), (string(aux.clase)));
        }
    }
    
    acumulador += "tumba:";
    kk = 0;
    for(i = 0; i < instance_number(o_regalo); i += 1){
        aux = instance_find(o_regalo, i);
        if(aux.clase > 1){
            ini_write_string("tumba", "x" + string(kk), string(aux.x));
            ini_write_string("tumba", "y" + string(kk), string(aux.y));
            acumulador += string(aux.x) + string(aux.y);
            ini_write_string("tumba", "c" + string(kk), string(aux.clase));
            acumulador += string(aux.clase);
            kk += 1;
        }
    }
    
    acumulador += "grancraneo:";
    for(i = 0; i < instance_number(grancraneo); i += 1){
        aux = instance_find(grancraneo, i);
        ini_write_string("grancraneo", "x" + string(i), string(aux.x));
        ini_write_string("grancraneo", "y" + string(i), string(aux.y));
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "ceniza:";
    for(i = 0; i < instance_number(ceniza); i += 1){
        aux = instance_find(ceniza, i);
        ini_write_string("ceniza", "x" + string(i), string(aux.x));
        ini_write_string("ceniza", "y" + string(i), string(aux.y));
        acumulador += string(aux.x) + string(aux.y);
    }
    
    acumulador += "bonus:";
    for(i = 0; i < 8; i++){
        ini_write_string("bonus", "b" + string(i), string(control.elbonus[i]));
    }
    
    acumulador += "datos:";
    
    ini_write_string("datos", "version", m_version);
    
    bebes += instance_number(o_joven);
    ini_write_string("datos", "jovenes", string(bebes));
    acumulador += string(bebes);
    
    ini_write_string("datos", "grandes", string(grandes));
    acumulador += string(grandes);
    
    bebes = fondos;
    ini_write_string("datos", "fondos", string(bebes));
    acumulador += string(bebes);
    
    bebes = control.dias
    ini_write_string("datos", "dias", string(bebes));
    acumulador += string(bebes);
    
    bebes = control.years
    ini_write_string("datos", "years", string(bebes));
    acumulador += string(bebes);
    
    bebes = totalescosas[8];
    ini_write_string("datos", "maximo", string(bebes));
    acumulador += string(bebes);
    
    acumulador += "acontecimientos:";
    
    i = instance_number(o_ovni);
    ini_write_string("acontecimientos", "aliens", string(i));
    acumulador += string(i);
    
    i = instance_number(o_pirata);
    ini_write_string("acontecimientos", "piratas", string(i));
    acumulador += string(i);
    
    i = instance_number(o_zombie);
    ini_write_string("acontecimientos", "zombies", string(i));
    acumulador += string(i);
    
    i = instance_number(o_abducidor);
    ini_write_string("acontecimientos", "abduccion", string(i));
    acumulador += string(i);
    
    i = instance_number(o_demonio);
    ini_write_string("acontecimientos", "demons", string(i));
    acumulador += string(i);
    
    i = instance_number(o_nude);
    ini_write_string("acontecimientos", "nudes", string(i));
    acumulador += string(i);
    
    i = instance_number(o_animal);
    ini_write_string("acontecimientos", "animales", string(i));
    acumulador += string(i);
    
    i = instance_number(o_bombardero);
    ini_write_string("acontecimientos", "bombaso", string(i));
    acumulador += string(i);
    
    i = instance_number(o_turista);
    ini_write_string("acontecimientos", "turistas", string(i));
    acumulador += string(i);
    
    i = instance_number(o_explorador);
    ini_write_string("acontecimientos", "exploradores", string(i));
    acumulador += string(i);
    
    i = instance_number(o_comanche);
    ini_write_string("acontecimientos", "tribu", string(i));
    acumulador += string(i);
    
    i = instance_number(o_prehistorico);
    ini_write_string("acontecimientos", "prehistorico", string(i));
    acumulador += string(i);
    
    i = instance_number(o_heroe);
    ini_write_string("acontecimientos", "heroe", string(i));
    acumulador += string(i);
    
    bebes = 0;
    grandes = control.pndi;
    for(i = 0; i < instance_number(humano); i += 1){
        aux = instance_find(humano, i);
        if(aux.virus == 2){
            bebes += 1;
        }
    }
    ini_write_string("acontecimientos", "pandemia", string(bebes + grandes));
    acumulador += string(bebes + grandes);
    
    bebes = 0;
    for(i = 0; i < instance_number(o_ladron); i += 1){
        aux = instance_find(o_ladron, i);
        if(aux.raiz == -1){
            bebes += 1;
        }
        else if(instance_exists(aux.raiz)){
            if(aux.raiz.object_index != o_guarida){
                bebes += 1;
            }
        }
    }
    ini_write_string("acontecimientos", "ladrones", string(bebes));
    acumulador += string(bebes);
    
    bebes = 0;
    for(i = 0; i < instance_number(o_terrorista); i += 1){
        aux = instance_find(o_terrorista, i);
        if(aux.raiz == -1){
            bebes += 1;
        }
    }
    ini_write_string("acontecimientos", "terroristas", string(bebes));
    acumulador += string(bebes);
    
    bebes = 0;
    for(i = 0; i < instance_number(o_policia); i += 1){
        aux = instance_find(o_policia, i);
        if(aux.raiz == -1){
            bebes += 1;
        }
    }
    ini_write_string("acontecimientos", "policias", string(bebes));
    acumulador += string(bebes);
    
    bebes = 0;
    for(i = 0; i < instance_number(o_medico); i += 1){
        aux = instance_find(o_medico, i);
        if(aux.raiz == -1){
            bebes += 1;
        }
    }
    ini_write_string("acontecimientos", "medicos", string(bebes));
    acumulador += string(bebes);
    
    bebes = 0;
    for(i = 0; i < instance_number(o_limpiador); i += 1){
        aux = instance_find(o_limpiador, i);
        if(aux.raiz == -1){
            bebes += 1;
        }
    }
    ini_write_string("acontecimientos", "limpiadores", string(bebes));
    acumulador += string(bebes);
    
    //if(!file_exists("guard.txt")){aux=file_text_open_write("guard.txt");file_text_write_string(aux,acumulador);file_text_close(aux);}
    ini_write_string("datos", "antihack", md5_string_unicode(base64_encode(acumulador)+"9328301"));
    
    ini_close();
    
    if(argument1){
        control.alarm[3] = room_speed;
        audio_play_sound(a_okey, 20, false);
    }
}
