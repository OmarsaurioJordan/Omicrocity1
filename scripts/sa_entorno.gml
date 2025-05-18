var aux, respuesta;
respuesta=true;
switch(argument1){
    case "balon":
        aux=collision_circle(argument0.x,argument0.y,vision,o_coliseo,1,1); break;
    case "toca":
        aux=collision_circle(argument0.x,argument0.y,vision,o_teatro,1,1); break;
    case "baila":
        aux=collision_circle(argument0.x,argument0.y,vision,o_casino,1,1); break;
    case "protesta":
        if(tabla[11,6]>0){
            aux=instance_find(o_gobernacion,0);} break;}
if(aux){
    if(aux.mienergia>0){
        argument0.estado=argument1;
        argument0.gv=-1;
        argument0.gn=-1;
        argument0.meta=-1;
        argument0.mx=aux.x;
        argument0.my=aux.y;
        respuesta=false;
        switch(argument1){
            case "balon":
                argument0.alarm[1]=actividades[0]; break;
            case "toca":
                argument0.alarm[1]=actividades[3]; break;
            case "baila":
                argument0.alarm[1]=actividades[10]; break;
            case "protesta":
                argument0.alarm[1]=actividades[17]; break;}}}
if(respuesta){
    argument0.alarm[1]=actividades[23];}
