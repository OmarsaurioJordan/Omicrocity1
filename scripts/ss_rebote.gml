//id, colisionador
var respuesta;
respuesta = true;
with(argument0){
    var otrocoso;
    otrocoso = instance_place(x, y, argument1);
    if(otrocoso){
        direction = point_direction(otrocoso.x, otrocoso.y, x, y);
        x += lengthdir_x(carrera, direction);
        y += lengthdir_y(carrera, direction);
        respuesta = false;
    }
}
return(respuesta);
//true significa permiso activar ia
