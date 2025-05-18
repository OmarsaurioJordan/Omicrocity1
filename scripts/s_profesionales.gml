//id, tipo de trabajador
var i, aux, respuesta;
respuesta = -1;
for(i = 0; i < instance_number(argument1); i += 1){
    aux = instance_find(argument1, i);
    if(aux.estado == "trabajo"){
        if(point_distance(argument0.x, argument0.y, aux.x, aux.y) < vision){
            respuesta = aux;
            break;
        }
    }
}
return(respuesta);
