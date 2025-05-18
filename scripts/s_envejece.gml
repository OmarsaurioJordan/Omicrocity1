//id joven que crece
if(totalescosas[0]>0){
    var aux;
    aux=instance_find(humano,irandom(totalescosas[0]-1));
    instance_create(aux.x,aux.y,o_viejo);
    aux.x=argument0.x;
    aux.y=argument0.y;
    //restablecer aux a estado desocupado
    with(argument0){
        instance_destroy();}}
else{
    }//poner alarma envejecimiento del joven
