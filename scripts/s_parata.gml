var i, aux, respuesta;
respuesta = -1;
for(i = 0; i < tabla[15,6]; i += 1){
    aux = instance_find(o_palomera, i);
    if(aux.empleado2[0] == -1){
        respuesta = aux;
        break;
    }
}
if(respuesta == -1){
    for(i = 0; i < tabla[14,6]; i += 1){
        aux = instance_find(o_choza, i);
        if(aux.empleado2[0] == -1){
            respuesta = aux;
            break;
        }
    }
}
return(respuesta);
