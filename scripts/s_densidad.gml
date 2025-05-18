//poscicion x, y, area true:grande o false:small
var i, respuesta;
respuesta = 0;
if(argument2){
    for(i = 0; i < 144; i += 16){
        if(collision_point(argument0 - 64 + i, argument1 - 48, humano, 1, 1)){
            respuesta += 1;
        }
        if(collision_point(argument0 - 64 + i, argument1 + 48, humano, 1, 1)){
            respuesta += 1;
        }
    }
    for(i = 0; i < 72; i += 24){
        if(collision_point(argument0 - 72, argument1 - 24 + i, humano, 1, 1)){
            respuesta += 1;}
        if(collision_point(argument0 + 72, argument1 - 24 + i, humano, 1, 1)){
            respuesta += 1;}
    }
}
else{
    var xi, yi;
    for(i = 0; i < 360; i += 45){
        xi = argument0 + lengthdir_x(24, i);
        yi = argument1 + lengthdir_y(24, i);
        if(collision_point(xi, yi, humano, 1, 1)){
            respuesta += 1;
        }
    }
}
return(respuesta);
//true max 20
//false max 8
