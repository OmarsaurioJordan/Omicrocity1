//id construccion pregunta por existencia gente
var i, respuesta;
respuesta = false;
for(i = 0; i < tabla[argument0.xyz,1]; i += 1){
    if(argument0.empleado1[i] != -1){
        respuesta = true;
        break;
    }
}
if(!respuesta and tabla[argument0.xyz,2] != -1){
    for(i = 0; i < tabla[argument0.xyz,3]; i += 1){
        if(argument0.empleado2[i] != -1){
            respuesta = true;
            break;
        }
    }
}
return(respuesta);
