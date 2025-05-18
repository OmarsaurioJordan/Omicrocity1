//id
var i, aux, respuesta, nuevo, mejor;
respuesta = -1;
mejor = -1;
for(i = 0; i < instance_number(ciudadano); i += 1){
    aux = instance_find(ciudadano, i);
    if(aux.estado == "compra" or aux.estado == "foto" or aux.estado == "balon" or
            aux.estado == "toca" or aux.estado == "celular" or aux.estado == "encaleta"){
        nuevo = point_distance(argument0.x, argument0.y, aux.x, aux.y);
        if(nuevo < vision * 2 and (nuevo < mejor or mejor == -1)){
            respuesta = aux;
            mejor = nuevo;
        }
    }
}
return(respuesta);
