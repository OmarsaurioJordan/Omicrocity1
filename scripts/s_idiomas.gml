//0:spanish, 1:ingles

switch(argument0){
    case 0:
        var i, archi;
        archi = file_text_open_read("spanish1_omty.txt");
        for(i = 0; i < m_construcciones; i += 1){
            control.lainfo[i] = file_text_read_string(archi);
            file_text_readln(archi);
        }
        control.unacalle = file_text_read_string(archi);
        control.unacalle += "##click derecho borrar";
        file_text_readln(archi);
        control.fullinf = file_text_read_string(archi);
        file_text_close(archi);
        
        control.encabezados[0] = "ESTADÍSTICAS:";
        control.encabezados[1] = "dinero:";
        control.encabezados[2] = "gente:";
        control.encabezados[3] = "edificaciones";
        control.encabezados[4] = "viviendas:";
        control.encabezados[5] = "consumo:";
        control.encabezados[6] = "generación:";
        control.encabezados[7] = "avalúo:";
        control.encabezados[8] = "polución:";
        control.encabezados[9] = "crias:";
        control.encabezados[10] = "borrar-espacio";
        control.encabezados[11] = "max pobl:";
        control.encabezados[12] = "bloqueado";
        control.encabezados[13] = "policías#G: $";
        control.encabezados[14] = "médicos#U: $";
        control.encabezados[15] = "limpiadores#L: $";
        control.encabezados[16] = "requisitos:##";
        control.encabezados[17] = "monedas/t: ";
        control.encabezados[18] = "prioridad:#";
        control.encabezados[19] = "anti-bombas#N: $";
        control.encabezados[20] = "F11(x2): borrar progreso";
        control.encabezados[21] = "Logros:";
        
        titulos[0] = "***digite nombre***";
        titulos[1] = "***nuevo mapa***";
        titulos[2] = "Demolicion";
        titulos[3] = "F1:languaje";
        titulos[4] = "invasion#pirata";
        titulos[5] = "bomba#pirata";
        titulos[6] = "invasion#alien";
        titulos[7] = "visita#alien";
        titulos[8] = "plaga#zombie";
        titulos[9] = "robots#revelados";
        titulos[10] = "pandemia#mortal";
        titulos[11] = "animal#observado";
        titulos[12] = "halloween#samhain";
        titulos[13] = "navidad#yule";
        titulos[14] = "demonio#liberado";
        titulos[15] = "otro#nudista";
        titulos[16] = "visita#indigena";
        titulos[17] = "llego#turista";
        titulos[18] = "llego#explorador";
        titulos[19] = "llego#terrorista";
        titulos[20] = "bomba#terrorista";
        titulos[21] = "disponible#";
        titulos[22] = "nuevos#policias";
        titulos[23] = "nuevos#medicos";
        titulos[24] = "nuevos#limpiadores";
        titulos[25] = "criatura#prehistorica";
        titulos[26] = "nuevo#superheroe";
        titulos[27] = "nuevo#antibomba";
        titulos[28] = "logro#alcanzado";
        break;
    default:
        var i, archi;
        archi = file_text_open_read("ingles1_omty.txt");
        for(i = 0; i < m_construcciones; i += 1){
            control.lainfo[i] = file_text_read_string(archi);
            file_text_readln(archi);
        }
        control.unacalle = file_text_read_string(archi);
        control.unacalle += "##right click delete";
        file_text_readln(archi);
        control.fullinf = file_text_read_string(archi);
        file_text_close(archi);
        
        control.encabezados[0] = "STATISTICS:";
        control.encabezados[1] = "money:";
        control.encabezados[2] = "people:";
        control.encabezados[3] = "buildings:";
        control.encabezados[4] = "housing:";
        control.encabezados[5] = "consumption:";
        control.encabezados[6] = "generation:";
        control.encabezados[7] = "valuation:";
        control.encabezados[8] = "pollution:";
        control.encabezados[9] = "young:";
        control.encabezados[10] = "back-space";
        control.encabezados[11] = "max popu:";
        control.encabezados[12] = "locked";
        control.encabezados[13] = "policemen#G: $";
        control.encabezados[14] = "physicians#U: $";
        control.encabezados[15] = "cleaners#L: $";
        control.encabezados[16] = "requirements:##";
        control.encabezados[17] = "money/t: ";
        control.encabezados[18] = "priority:#";
        control.encabezados[19] = "anti-bombs#N: $";
        control.encabezados[20] = "F11(x2): delete progress";
        control.encabezados[21] = "Achievements:";
        
        titulos[0] = "***type name***";
        titulos[1] = "***new map***";
        titulos[2] = "Demolition";
        titulos[3] = "F1:lenguaje";
        titulos[4] = "pirate#invasion";
        titulos[5] = "pirate#bomb";
        titulos[6] = "alien#invasion";
        titulos[7] = "alien#visit";
        titulos[8] = "zombie#plague";
        titulos[9] = "revealed#robots";
        titulos[10] = "deadly#pandemic";
        titulos[11] = "animal#observed";
        titulos[12] = "halloween#samhain";
        titulos[13] = "christmas#yule";
        titulos[14] = "demon#released";
        titulos[15] = "other#nudist";
        titulos[16] = "indigenous#visit";
        titulos[17] = "arrived#tourist";
        titulos[18] = "arrived#explorer";
        titulos[19] = "arrived#terrorist";
        titulos[20] = "terrorist#bomb";
        titulos[21] = "available#";
        titulos[22] = "new#policemen";
        titulos[23] = "new#physicians";
        titulos[24] = "new#cleaners";
        titulos[25] = "prehistoric#creature";
        titulos[26] = "new#superhero";
        titulos[27] = "new#antibomb";
        titulos[28] = "achievement#reached";
        break;
}

s_dividenombre();
