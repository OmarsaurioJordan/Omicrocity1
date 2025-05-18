//quien busca, objeto a buscar
var otro, respuesta;
respuesta = true;
if(instance_exists(argument1)){
    otro = instance_nearest(argument0.x, argument0.y, argument1);
    if(point_distance(otro.x, otro.y, argument0.x, argument0.y) < vision * 2){
        respuesta = false;
        argument0.meta = otro;
    }
}
return(respuesta);
