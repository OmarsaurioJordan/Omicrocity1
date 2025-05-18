//id buscado, objeto esperado (o parent)
var resultado;
resultado = false;
if(argument0 > -1){
    if(instance_exists(argument0)){
        if(argument0.object_index == argument1 or argument1 == -1){
            resultado = true;
        }
        else if(object_is_ancestor(argument0.object_index, argument1)){
            resultado = true;
        }
    }
}
return(resultado);
