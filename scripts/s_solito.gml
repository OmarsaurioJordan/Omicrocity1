//instancia sola respecto a xy, pos x, pos y (del buscador)
var i, aux, respuesta;
respuesta = true;
for(i = 0; i < totalescosas[0]; i += 1){
    aux = instance_find(humano, i);
    if s_confirma(aux,-1){
        if(aux != argument0){
            if(point_distance(aux.x, aux.y, argument1, argument2) < vision){
                respuesta = false;
                break;
            }
        }
    }
}
return(respuesta);
