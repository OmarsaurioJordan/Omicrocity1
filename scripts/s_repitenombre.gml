var i, respuesta;
respuesta = false;
for(i = 0; i < argument0.conteo; i += 1){
    if(argument0.pagina[i] == argument0.nuevo){
        respuesta = true;
        break;
    }
}
return(respuesta);
