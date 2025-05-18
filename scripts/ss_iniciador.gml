//id
with(argument0){
    raiz = -1;//construccion hogar
    gv = -1;//grafos (calles)
    gn = -1;
    meta = -1;//instancia en mira
    mx = 0;//coordenadas
    my = 0;
    estado = "libre";
    virus = 0;//0:sano, 1:gripa, 2:pandemia
    paso = 0;
    brazo = irandom(3);
    mobile = false;//activar movimiento aleatorio
    clase = 0;//variable auxiliar
    deviaje=true;
    alarm[0] = 1 + irandom(3);
    alarm[1] = cambiopasos + irandom(cambiopasos);
    alarm[2] = cambiopasos + irandom(cambiopasos);
    mp_potential_settings(45, 15, 1, true);
    if(totalescosas[0] > totalescosas[8]){
        totalescosas[8] = totalescosas[0];
    }
}
