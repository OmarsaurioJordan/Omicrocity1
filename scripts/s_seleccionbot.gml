//blanco en mira
var respuesta;
respuesta = true;
if(argument0.virus < 2){
    switch(object_get_name(argument0.object_index)){
        case "o_medico": case "o_cocinero": case "o_limpiador":
        case "o_ingeniero": case "o_obrero": case "o_cargador":
        case "o_minero": case "o_agricultor": case "o_cientifico":
        case "o_pobre": case "o_promedio":
            respuesta = false;
        break;
    }
}
return(respuesta);
