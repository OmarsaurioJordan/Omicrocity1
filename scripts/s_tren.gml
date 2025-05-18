var i, aux, respuesta;
respuesta = -1;
i = 0;
do{
    aux = instance_find(o_estacion, irandom(tabla[13,6] - 1));
    if(aux.mienergia > 0 and aux != argument0){
        respuesta = aux;
    }
    i += 1;
}
until(i > round(tabla[13,6] * 0.5));

return(respuesta);
