//tipo objeto a crear, cantidad a crear
var i, aux, resultado, qq;
repeat(argument1){
    resultado = true;
    if(instance_exists(ciudadano)){
        i = 0;
        qq = instance_number(ciudadano) - 1;
        do{
            aux = instance_find(ciudadano, irandom(qq));
            if(aux.object_index != o_turista and aux.object_index != o_indio){
                resultado = false;
                instance_create(aux.x, aux.y, argument0);
                with(aux){
                    instance_destroy();
                }
            }
            i += 1;
        }
        until(i > 9 or !resultado);
    }
    if(resultado and instance_exists(humano)){
        i = 0;
        qq = instance_number(humano) - 1;
        do{
            aux = instance_find(humano, irandom(qq));
            if(aux.object_index != o_limpiador and aux.object_index != o_medico and
                    aux.object_index != o_policia and aux.object_index != o_lider){
                resultado = false;
                instance_create(aux.x, aux.y, argument0);
                with(aux){
                    instance_destroy();
                }
            }
            i += 1;
        }
        until(i>19 or !resultado);
    }
}
