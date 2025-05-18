var aux;
aux=collision_circle(argument0.x,argument0.y,vision,o_coliseo,1,1);
if(aux){
    if(aux.mienergia>0){
        argument0.estado="balon";
        argument0.gv=-1;
        argument0.gn=-1;
        argument0.meta=-1;
        argument0.mx=aux.x;
        argument0.my=aux.y;
        argument0.alarm[1]=actividades[0];}}
