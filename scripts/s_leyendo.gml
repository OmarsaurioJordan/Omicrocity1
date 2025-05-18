//nombre del archivo
var i;

if(file_exists("omty_" + argument0 + ".ini") and argument0 != "" and string_count(".ini", argument0) == 0){
    ini_open("omty_" + argument0 + ".ini");
    
    if(ini_key_exists("datos", "version")){
        
        var aux, nh, nw, acumulador;
        acumulador = "";
        
        acumulador += "coliseo:";
        if(ini_key_exists("coliseo", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("coliseo", "x" + string(i), "0")),
                real(ini_read_string("coliseo", "y" + string(i), "0")), o_coliseo);
                acumulador += ini_read_string("coliseo", "x" + string(i), "0") + ini_read_string("coliseo", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("coliseo", "x" + string(i)));
        }
        
        acumulador += "teatro:";
        if(ini_key_exists("teatro", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("teatro", "x" + string(i), "0")),
                real(ini_read_string("teatro", "y" + string(i), "0")), o_teatro);
                acumulador += ini_read_string("teatro", "x" + string(i), "0") + ini_read_string("teatro", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("teatro", "x" + string(i)));
        }
        
        acumulador += "templo:";
        if(ini_key_exists("templo", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("templo", "x" + string(i), "0")),
                real(ini_read_string("templo", "y" + string(i), "0")), o_templo);
                acumulador += ini_read_string("templo", "x" + string(i), "0") + ini_read_string("templo", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("templo", "x" + string(i)));
        }
        
        acumulador += "hospital:";
        if(ini_key_exists("hospital", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("hospital", "x" + string(i), "0")),
                real(ini_read_string("hospital", "y" + string(i), "0")), o_hospital);
                acumulador += ini_read_string("hospital", "x" + string(i), "0") + ini_read_string("hospital", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("hospital", "x" + string(i)));
        }
        
        acumulador += "casino:";
        if(ini_key_exists("casino", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("casino", "x" + string(i), "0")),
                real(ini_read_string("casino", "y" + string(i), "0")), o_casino);
                acumulador += ini_read_string("casino", "x" + string(i), "0") + ini_read_string("casino", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("casino", "x" + string(i)));
        }
        
        acumulador += "empresa:";
        if(ini_key_exists("empresa", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("empresa", "x" + string(i), "0")),
                real(ini_read_string("empresa", "y" + string(i), "0")), o_empresa);
                acumulador += ini_read_string("empresa", "x" + string(i), "0") + ini_read_string("empresa", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("empresa", "x" + string(i)));
        }
        
        acumulador += "fabrica:";
        if(ini_key_exists("fabrica", "x0")){
            nh = 0;
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("fabrica", "x" + string(i), "0")),
                real(ini_read_string("fabrica", "y" + string(i), "0")), o_fabrica);
                acumulador += ini_read_string("fabrica", "x" + string(i), "0") + ini_read_string("fabrica", "y" + string(i), "0");
                acumulador += ini_read_string("fabrica", "m" + string(i), "0");
                if(ini_read_string("fabrica", "m" + string(i), "0") == "1"){
                    aux.alarm[2] = 1;
                    nh = 1;
                }
                i += 1;
            }
            until(!ini_key_exists("fabrica", "x" + string(i)));
            if(nh == 1){
                s_notificacion(9, "");
            }
        }
        
        acumulador += "puerto:";
        if(ini_key_exists("puerto", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("puerto", "x" + string(i), "0")),
                real(ini_read_string("puerto", "y" + string(i), "0")), o_puerto);
                acumulador += ini_read_string("puerto", "x" + string(i), "0") + ini_read_string("puerto", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("puerto", "x" + string(i)));
        }
        
        acumulador += "comercio:";
        if(ini_key_exists("comercio", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("comercio", "x" + string(i), "0")),
                real(ini_read_string("comercio", "y" + string(i), "0")), o_comercio);
                acumulador += ini_read_string("comercio", "x" + string(i), "0") + ini_read_string("comercio", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("comercio", "x" + string(i)));
        }
        
        acumulador += "universidad:";
        if(ini_key_exists("universidad", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("universidad", "x" + string(i), "0")),
                real(ini_read_string("universidad", "y" + string(i), "0")), o_universidad);
                acumulador += ini_read_string("universidad", "x" + string(i), "0") + ini_read_string("universidad", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("universidad", "x" + string(i)));
        }
        
        acumulador += "laboratorio:";
        if(ini_key_exists("laboratorio", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("laboratorio", "x" + string(i), "0")),
                real(ini_read_string("laboratorio", "y" + string(i), "0")), o_laboratorio);
                acumulador += ini_read_string("laboratorio", "x" + string(i), "0") + ini_read_string("laboratorio", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("laboratorio", "x" + string(i)));
        }
        
        acumulador += "gobernacion:";
        if(ini_key_exists("gobernacion", "x")){
            aux = instance_create(real(ini_read_string("gobernacion", "x", "0")),
            real(ini_read_string("gobernacion", "y", "0")), o_gobernacion);
            acumulador += ini_read_string("gobernacion", "x", "0") + ini_read_string("gobernacion", "y", "0");
        }
        
        acumulador += "cuartel:";
        if(ini_key_exists("cuartel", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("cuartel", "x" + string(i), "0")),
                real(ini_read_string("cuartel", "y" + string(i), "0")), o_cuartel);
                acumulador += ini_read_string("cuartel", "x" + string(i), "0") + ini_read_string("cuartel", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("cuartel", "x" + string(i)));
        }
        
        acumulador += "estacion:";
        if(ini_key_exists("estacion", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("estacion", "x" + string(i), "0")),
                real(ini_read_string("estacion", "y" + string(i), "0")), o_estacion);
                acumulador += ini_read_string("estacion", "x" + string(i), "0") + ini_read_string("estacion", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("estacion", "x" + string(i)));
        }
        
        acumulador += "choza:";
        if(ini_key_exists("choza", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("choza", "x" + string(i), "0")),
                real(ini_read_string("choza", "y" + string(i), "0")), o_choza);
                acumulador += ini_read_string("choza", "x" + string(i), "0") + ini_read_string("choza", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("choza", "x" + string(i)));
        }
        
        acumulador += "palomera:";
        if(ini_key_exists("palomera", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("palomera", "x" + string(i), "0")),
                real(ini_read_string("palomera", "y" + string(i), "0")), o_palomera);
                acumulador += ini_read_string("palomera", "x" + string(i), "0") + ini_read_string("palomera", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("palomera", "x" + string(i)));
        }
        
        acumulador += "casa:";
        if(ini_key_exists("casa", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("casa", "x" + string(i), "0")),
                real(ini_read_string("casa", "y" + string(i), "0")), o_casa);
                acumulador += ini_read_string("casa", "x" + string(i), "0") + ini_read_string("casa", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("casa", "x" + string(i)));
        }
        
        acumulador += "doblecasa:";
        if(ini_key_exists("doblecasa", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("doblecasa", "x" + string(i), "0")),
                real(ini_read_string("doblecasa", "y" + string(i), "0")), o_doblecasa);
                acumulador += ini_read_string("doblecasa", "x" + string(i), "0") + ini_read_string("doblecasa", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("doblecasa", "x" + string(i)));
        }
        
        acumulador += "casota:";
        if(ini_key_exists("casota", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("casota", "x" + string(i), "0")),
                real(ini_read_string("casota", "y" + string(i), "0")), o_casota);
                acumulador += ini_read_string("casota", "x" + string(i), "0") + ini_read_string("casota", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("casota", "x" + string(i)));
        }
        
        acumulador += "mansion:";
        if(ini_key_exists("mansion", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("mansion", "x" + string(i), "0")),
                real(ini_read_string("mansion", "y" + string(i), "0")), o_mansion);
                acumulador += ini_read_string("mansion", "x" + string(i), "0") + ini_read_string("mansion", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("mansion", "x" + string(i)));
        }
        
        acumulador += "condominio:";
        if(ini_key_exists("condominio", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("condominio", "x" + string(i), "0")),
                real(ini_read_string("condominio", "y" + string(i), "0")), o_condominio);
                acumulador += ini_read_string("condominio", "x" + string(i), "0") + ini_read_string("condominio", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("condominio", "x" + string(i)));
        }
        
        acumulador += "edificio:";
        if(ini_key_exists("edificio", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("edificio", "x" + string(i), "0")),
                real(ini_read_string("edificio", "y" + string(i), "0")), o_edificio);
                acumulador += ini_read_string("edificio", "x" + string(i), "0") + ini_read_string("edificio", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("edificio", "x" + string(i)));
        }
        
        acumulador += "futurista:";
        if(ini_key_exists("futurista", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("futurista", "x" + string(i), "0")),
                real(ini_read_string("futurista", "y" + string(i), "0")), o_futurista);
                acumulador += ini_read_string("futurista", "x" + string(i), "0") + ini_read_string("futurista", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("futurista", "x" + string(i)));
        }
        
        acumulador += "exotica:";
        if(ini_key_exists("exotica", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("exotica", "x" + string(i), "0")),
                real(ini_read_string("exotica", "y" + string(i), "0")), o_exotica);
                acumulador += ini_read_string("exotica", "x" + string(i), "0") + ini_read_string("exotica", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("exotica", "x" + string(i)));
        }
        
        acumulador += "subterranea:";
        if(ini_key_exists("subterranea", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("subterranea", "x" + string(i), "0")),
                real(ini_read_string("subterranea", "y" + string(i), "0")), o_subterranea);
                acumulador += ini_read_string("subterranea", "x" + string(i), "0") + ini_read_string("subterranea", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("subterranea", "x" + string(i)));
        }
        
        acumulador += "guarida:";
        if(ini_key_exists("guarida", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("guarida", "x" + string(i), "0")),
                real(ini_read_string("guarida", "y" + string(i), "0")), o_guarida);
                acumulador += ini_read_string("guarida", "x" + string(i), "0") + ini_read_string("guarida", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("guarida", "x" + string(i)));
        }
        
        acumulador += "hotel:";
        if(ini_key_exists("hotel", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("hotel", "x" + string(i), "0")),
                real(ini_read_string("hotel", "y" + string(i), "0")), o_hotel);
                acumulador += ini_read_string("hotel", "x" + string(i), "0") + ini_read_string("hotel", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("hotel", "x" + string(i)));
        }
        
        acumulador += "aeropuerto:";
        if(ini_key_exists("aeropuerto", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("aeropuerto", "x" + string(i), "0")),
                real(ini_read_string("aeropuerto", "y" + string(i), "0")), o_aeropuerto);
                acumulador += ini_read_string("aeropuerto", "x" + string(i), "0") + ini_read_string("aeropuerto", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("aeropuerto", "x" + string(i)));
        }
        
        acumulador += "cultivo:";
        if(ini_key_exists("cultivo", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("cultivo", "x" + string(i), "0")),
                real(ini_read_string("cultivo", "y" + string(i), "0")), o_cultivo);
                acumulador += ini_read_string("cultivo", "x" + string(i), "0") + ini_read_string("cultivo", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("cultivo", "x" + string(i)));
        }
        
        acumulador += "restaurante:";
        if(ini_key_exists("restaurante", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("restaurante", "x" + string(i), "0")),
                real(ini_read_string("restaurante", "y" + string(i), "0")), o_restaurante);
                acumulador += ini_read_string("restaurante", "x" + string(i), "0") + ini_read_string("restaurante", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("restaurante", "x" + string(i)));
        }
        
        acumulador += "parque:";
        if(ini_key_exists("parque", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("parque", "x" + string(i), "0")),
                real(ini_read_string("parque", "y" + string(i), "0")), o_parque);
                acumulador += ini_read_string("parque", "x" + string(i), "0") + ini_read_string("parque", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("parque", "x" + string(i)));
        }
        
        acumulador += "cementerio:";
        if(ini_key_exists("cementerio", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("cementerio", "x" + string(i), "0")),
                real(ini_read_string("cementerio", "y" + string(i), "0")), o_cementerio);
                acumulador += ini_read_string("cementerio", "x" + string(i), "0") + ini_read_string("cementerio", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("cementerio", "x" + string(i)));
        }
        
        acumulador += "dinoparque:";
        if(ini_key_exists("dinoparque", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("dinoparque", "x" + string(i), "0")),
                real(ini_read_string("dinoparque", "y" + string(i), "0")), o_dinoparque);
                acumulador += ini_read_string("dinoparque", "x" + string(i), "0") + ini_read_string("dinoparque", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("dinoparque", "x" + string(i)));
        }
        
        acumulador += "comunicacion:";
        if(ini_key_exists("comunicacion", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("comunicacion", "x" + string(i), "0")),
                real(ini_read_string("comunicacion", "y" + string(i), "0")), o_comunicacion);
                acumulador += ini_read_string("comunicacion", "x" + string(i), "0") + ini_read_string("comunicacion", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("comunicacion", "x" + string(i)));
        }
        
        acumulador += "acueducto:";
        if(ini_key_exists("acueducto", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("acueducto", "x" + string(i), "0")),
                real(ini_read_string("acueducto", "y" + string(i), "0")), o_acueducto);
                acumulador += ini_read_string("acueducto", "x" + string(i), "0") + ini_read_string("acueducto", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("acueducto", "x" + string(i)));
        }
        
        acumulador += "basurero:";
        if(ini_key_exists("basurero", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("basurero", "x" + string(i), "0")),
                real(ini_read_string("basurero", "y" + string(i), "0")), o_basurero);
                acumulador += ini_read_string("basurero", "x" + string(i), "0") + ini_read_string("basurero", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("basurero", "x" + string(i)));
        }
        
        acumulador += "turbina:";
        if(ini_key_exists("turbina", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("turbina", "x" + string(i), "0")),
                real(ini_read_string("turbina", "y" + string(i), "0")), o_turbina);
                acumulador += ini_read_string("turbina", "x" + string(i), "0") + ini_read_string("turbina", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("turbina", "x" + string(i)));
        }
        
        acumulador += "caldera:";
        if(ini_key_exists("caldera", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("caldera", "x" + string(i), "0")),
                real(ini_read_string("caldera", "y" + string(i), "0")), o_caldera);
                acumulador += ini_read_string("caldera", "x" + string(i), "0") + ini_read_string("caldera", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("caldera", "x" + string(i)));
        }
        
        acumulador += "mina:";
        if(ini_key_exists("mina", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("mina", "x" + string(i), "0")),
                real(ini_read_string("mina", "y" + string(i), "0")), o_mina);
                acumulador += ini_read_string("mina", "x" + string(i), "0") + ini_read_string("mina", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("mina", "x" + string(i)));
        }
        
        acumulador += "hueco:";
        if(ini_key_exists("hueco", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("hueco", "x" + string(i), "0")),
                real(ini_read_string("hueco", "y" + string(i), "0")), o_hueco);
                acumulador += ini_read_string("hueco", "x" + string(i), "0") + ini_read_string("hueco", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("hueco", "x" + string(i)));
        }
        
        acumulador += "piramide:";
        if(ini_key_exists("piramide", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("piramide", "x" + string(i), "0")),
                real(ini_read_string("piramide", "y" + string(i), "0")), o_piramide);
                acumulador += ini_read_string("piramide", "x" + string(i), "0") + ini_read_string("piramide", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("piramide", "x" + string(i)));
        }
        
        acumulador += "arbol:";
        if(ini_key_exists("arbol", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("arbol", "x" + string(i), "0")),
                real(ini_read_string("arbol", "y" + string(i), "0")), o_arbol);
                acumulador += ini_read_string("arbol", "x" + string(i), "0") + ini_read_string("arbol", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("arbol", "x" + string(i)));
        }
        
        acumulador += "calle:";
        if(ini_key_exists("calle", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("calle", "x" + string(i), "0")),
                real(ini_read_string("calle", "y" + string(i), "0")), o_calle);
                acumulador += ini_read_string("calle", "x" + string(i), "0") + ini_read_string("calle", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("calle", "x" + string(i)));
        }
        
        acumulador += "polucion:";
        if(ini_key_exists("polucion", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("polucion", "x" + string(i), "0")),
                real(ini_read_string("polucion", "y" + string(i), "0")), o_basura);
                acumulador += ini_read_string("polucion", "x" + string(i), "0") + ini_read_string("polucion", "y" + string(i), "0");
                aux.clase = real(ini_read_string("polucion", "c" + string(i), "-1"));
                acumulador += ini_read_string("polucion", "c" + string(i), "-1");
                aux.vio = false;
                i += 1;
            }
            until(!ini_key_exists("polucion", "x" + string(i)));
        }
        
        acumulador += "tumba:";
        if(ini_key_exists("tumba", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("tumba", "x" + string(i), "0")),
                real(ini_read_string("tumba", "y" + string(i), "0")), o_regalo);
                acumulador += ini_read_string("tumba", "x" + string(i), "0") + ini_read_string("tumba", "y" + string(i), "0");
                aux.clase = real(ini_read_string("tumba", "c" + string(i), "3"));
                acumulador += ini_read_string("tumba", "c" + string(i), "3");
                i += 1;
            }
            until(!ini_key_exists("tumba", "x" + string(i)));
        }
        
        acumulador += "grancraneo:";
        if(ini_key_exists("grancraneo", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("grancraneo", "x" + string(i), "0")),
                real(ini_read_string("grancraneo", "y" + string(i), "0")), grancraneo);
                acumulador += ini_read_string("grancraneo", "x" + string(i), "0") + ini_read_string("grancraneo", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("grancraneo", "x" + string(i)));
        }
        
        acumulador += "ceniza:";
        if(ini_key_exists("ceiza", "x0")){
            i = 0;
            do{
                aux = instance_create(real(ini_read_string("ceniza", "x" + string(i), "0")),
                real(ini_read_string("ceniza", "y" + string(i), "0")), ceniza);
                acumulador += ini_read_string("ceniza", "x" + string(i), "0") + ini_read_string("ceniza", "y" + string(i), "0");
                i += 1;
            }
            until(!ini_key_exists("ceniza", "x" + string(i)));
        }
        
        acumulador += "bonus:";
        for(i = 0; i < 8; i++){
            control.elbonus[i] = real(ini_read_string("bonus", "b" + string(i), "0"));
        }
        
        acumulador += "datos:";
        
        s_creapoblacion(real(ini_read_string("datos", "grandes", "0")),
            real(ini_read_string("datos", "jovenes", "0")));
        acumulador += ini_read_string("datos", "jovenes", "0") + ini_read_string("datos", "grandes", "0");
        
        fondos = real(ini_read_string("datos", "fondos", "0"));
        acumulador += ini_read_string("datos", "fondos", "0");
        
        control.dias = real(ini_read_string("datos", "dias", "0"));
        control.years = real(ini_read_string("datos", "years", "0"));
        acumulador += ini_read_string("datos", "dias", "0") + ini_read_string("datos", "years", "0");
        
        totalescosas[8] = real(ini_read_string("datos", "maximo", "0"));
        acumulador += ini_read_string("datos", "maximo", "0");
        
        acumulador += "acontecimientos:";
        
        acumulador += ini_read_string("acontecimientos", "aliens", "0");
        repeat(real(ini_read_string("acontecimientos", "aliens", "0"))){
            nh = (room_width * 0.5) + (room_height * 0.25);
            nw = irandom(359);
            instance_create(room_width * 0.5 + lengthdir_x(nh, nw), room_height * 0.5 + lengthdir_y(nh, nw), o_ovni);
            nw = round(nw * 0.1) * 10;
            s_notificacion(6, string(nw));
        }
        
        acumulador += ini_read_string("acontecimientos", "piratas", "0");
        repeat(real(ini_read_string("acontecimientos", "piratas", "0"))){
            nh = (room_width * 0.5) + (room_height * 0.25);
            nw = irandom(359);
            instance_create(room_width * 0.5 + lengthdir_x(nh, nw), room_height * 0.5 + lengthdir_y(nh, nw), o_pirata);
            nw = round(nw * 0.1) * 10;
            s_notificacion(4, string(nw));
        }
        
        acumulador += ini_read_string("acontecimientos", "zombies", "0");
        repeat(real(ini_read_string("acontecimientos", "zombies", "0"))){
            instance_create(irandom(room_width), irandom(room_height), o_zombie);
        }
        if(real(ini_read_string("acontecimientos", "zombies", "0")) > 0){
            s_notificacion(8, "");
        }
        
        acumulador += ini_read_string("acontecimientos", "abduccion", "0");
        repeat(real(ini_read_string("acontecimientos", "abduccion", "0"))){
            nh = (room_width * 0.5) + (room_height * 0.25);
            nw = irandom(359);
            instance_create(room_width * 0.5 + lengthdir_x(nh, nw), room_height * 0.5 + lengthdir_y(nh, nw), o_abducidor);
            nw = round(nw * 0.1) * 10;
            s_notificacion(7, string(nw));
        }
        
        acumulador += ini_read_string("acontecimientos", "demons", "0");
        repeat(real(ini_read_string("acontecimientos", "demons", "0"))){
            instance_create(irandom(room_width), irandom(room_height), o_demonio);
        }
        if(real(ini_read_string("acontecimientos", "demons", "0")) > 0){
            s_notificacion(14, "");
        }
        
        acumulador += ini_read_string("acontecimientos", "nudes", "0");
        repeat(real(ini_read_string("acontecimientos", "nudes", "0"))){
            instance_create(irandom(room_width), irandom(room_height), o_nude);
        }
        
        acumulador += ini_read_string("acontecimientos", "animales", "0");
        repeat(real(ini_read_string("acontecimientos", "animales", "0"))){
            s_creanimal(true, true);
        }
        
        acumulador += ini_read_string("acontecimientos", "bombaso", "0");
        repeat(real(ini_read_string("acontecimientos", "bombaso", "0"))){
            i = instance_find(bloques, irandom(instance_number(bloques) - 1));
            nh = (room_width * 0.5) + (room_height * 0.25);
            nw = irandom(359);
            aux = instance_create(room_width * 0.5 + lengthdir_x(nh, nw), room_height * 0.5 + lengthdir_y(nh, nw), o_bombardero);
            aux.meta = i;
            nw = round(nw * 0.1) * 10;
            s_notificacion(5, string(nw));
        }
        
        acumulador += ini_read_string("acontecimientos", "turistas", "0");
        repeat(real(ini_read_string("acontecimientos", "turistas", "0"))){
            instance_create(irandom(room_width), irandom(room_height), o_turista);
        }
        
        acumulador += ini_read_string("acontecimientos", "exploradores", "0");
        repeat(real(ini_read_string("acontecimientos", "exploradores", "0"))){
            instance_create(150 + irandom(room_width - 300), 100 + irandom(room_height - 200), o_explorador);
        }
        
        acumulador += ini_read_string("acontecimientos", "tribu", "0");
        repeat(real(ini_read_string("acontecimientos", "tribu", "0"))){
            nh = (room_width * 0.5) + (room_height * 0.25);
            nw = irandom(359);
            instance_create(room_width * 0.5 + lengthdir_x(nh, nw), room_height * 0.5 + lengthdir_y(nh, nw), o_comanche);
            nw = round(nw * 0.1) * 10;
            s_notificacion(16, string(nw));
        }
        
        acumulador += ini_read_string("acontecimientos", "prehistorico", "0");
        repeat(real(ini_read_string("acontecimientos", "prehistorico", "0"))){
            instance_create(irandom(room_width), irandom(room_height), o_prehistorico);
        }
        
        acumulador += ini_read_string("acontecimientos", "heroe", "0");
        repeat(real(ini_read_string("acontecimientos", "heroe", "0"))){
            instance_create(irandom(room_width), irandom(room_height), o_heroe);
        }
        
        control.pndi = real(ini_read_string("acontecimientos", "pandemia", "0"));
        acumulador += ini_read_string("acontecimientos", "pandemia", "0");
        
        acumulador += ini_read_string("acontecimientos", "ladrones", "0");
        repeat(real(ini_read_string("acontecimientos", "ladrones", "0"))){
            if(!s_crearata(true)){
                break;}
        }
        
        acumulador += ini_read_string("acontecimientos", "terroristas", "0");
        repeat(real(ini_read_string("acontecimientos", "terroristas", "0"))){
            instance_create(irandom(room_width), irandom(room_height), o_terrorista);
        }
        
        acumulador += ini_read_string("acontecimientos", "policias", "0");
        repeat(real(ini_read_string("acontecimientos", "policias", "0"))){
            instance_create(irandom(room_width), irandom(room_height), o_policia);
        }
        
        acumulador += ini_read_string("acontecimientos", "medicos", "0");
        repeat(real(ini_read_string("acontecimientos", "medicos", "0"))){
            instance_create(irandom(room_width), irandom(room_height), o_medico);
        }
        
        acumulador += ini_read_string("acontecimientos", "limpiadores", "0");
        repeat(real(ini_read_string("acontecimientos", "limpiadores", "0"))){
            instance_create(irandom(room_width), irandom(room_height), o_limpiador);
        }
        
        //if(!file_exists("lee.txt")){aux=file_text_open_write("lee.txt");file_text_write_string(aux,acumulador);file_text_close(aux);}
        if(md5_string_unicode(base64_encode(acumulador)+"9328301") == ini_read_string("datos","antihack","0")){
            i = 1;
        }
        else{
            i = 0;
        }
        
        with(o_calle){
            alarm[0] = 1;
            alarm[1] = 2;}
            
        with(o_puerto){
            alarm[2] = irandom(creaciontime);}
            
        with(o_aeropuerto){
            alarm[2] = irandom(creaciontime);}
    
    }//ojo todo el codigo anterior
    else{
        i = 0;
    }
    ini_close();
}
else{
    i = 1;
    s_nuevomapa();
}

control.alarm[9] = creaciontime;

if(i == 0){
    control.nombre = "";
    file_delete("omty_" + argument0 + ".ini");
    ini_open("config_omty.ini");
    ini_write_string("configuracion", "actual", "");
    ini_close();
    game_restart();
}
