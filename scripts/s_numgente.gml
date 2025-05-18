//id construccion pregunta por numero gente
var i, respuesta;
respuesta = 0;
for(i = 0; i < tabla[argument0.xyz,1]; i += 1){
    if(argument0.empleado1[i] != -1){
        respuesta += 1;
    }
}
if(tabla[argument0.xyz,2] != -1){
    for(i = 0; i < tabla[argument0.xyz,3]; i += 1){
        if(argument0.empleado2[i] != -1){
            respuesta += 1;
        }
    }
}
return(respuesta);
