//arg0: no importa proporcion
var xx, resultado;
xx = s_parata();
resultado = false;
if(xx){
    if(argument0){
        var jeje;
        jeje = irandom(359);
        xx.empleado2[0] = instance_create(xx.x + lengthdir_x(32, jeje),
            xx.y + lengthdir_y(32, jeje), o_ladron);
        xx.empleado2[0].raiz = xx;
        resultado = true;}
    else if(instance_number(o_ladron) < instance_number(ciudadano) * 0.25){
        var jeje;
        jeje = irandom(359);
        xx.empleado2[0] = instance_create(xx.x + lengthdir_x(32, jeje),
            xx.y + lengthdir_y(32, jeje), o_ladron);
        xx.empleado2[0].raiz = xx;
        resultado = true;}}
return(resultado);
