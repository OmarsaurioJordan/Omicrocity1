var i, comi, aux;
comi = 0;

for(i = 0; i < tabla[29,6]; i += 1){
    aux = instance_find(o_restaurante, i);
    if(aux.activo){
        comi += 0.8;
    }
}

for(i = 0; i < tabla[28,6]; i += 1){
    aux = instance_find(o_cultivo, i);
    if(aux.activo){
        comi += 0.2;
    }
}

if(totalescosas[0] > tabla[15,1] * 3){
    if(totalescosas[0] > 60 * comi){
        with(ciudadano){
            if(irandom(1) == 0 and estado == "libre" and
            object_index != o_indio and object_index != o_turista){
                s_actividades(id, "protesta");
            }
        }
    }
}
