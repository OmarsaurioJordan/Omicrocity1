//id
with(argument0){
    meta = -1;//instancia en mira
    estado = "libre";
    paso = 0;
    brazo = irandom(3);
    mx = x;
    my = y;
    mobile = false;//activar movimiento aleatorio
    clase = 0;//variable auxiliar
    virus = 0;//no utilizable (evitar errores)
    alarm[0] = 1 + irandom(3);
    alarm[1] = cambiopasos + irandom(cambiopasos);
    alarm[2] = cambiopasos + irandom(cambiopasos);
    mp_potential_settings(45, 15, 1, true);
}
