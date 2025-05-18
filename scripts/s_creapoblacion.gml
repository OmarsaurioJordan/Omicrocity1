var grandes, mmm;
grandes = argument0;
with(viviendas){
    if(object_index != o_hotel){
        var j, jeje;
        for(j = 0; j < tabla[xyz,1]; j += 1){
            if(empleado1[j] == -1 and grandes > 0){
                jeje = irandom(359);
                empleado1[j] = instance_create(x + lengthdir_x(32, jeje), y + lengthdir_y(32, jeje), tabla[xyz,0]);
                empleado1[j].raiz = id;
                grandes -= 1;
            }
        }
        if(tabla[xyz,2] != -1 and grandes > 0){
            for(j = 0; j < tabla[xyz,3]; j += 1){
                if(empleado2[j] == -1 and grandes > 0){
                    jeje = irandom(359);
                    empleado2[j] = instance_create(x + lengthdir_x(32, jeje), y + lengthdir_y(32, jeje), tabla[xyz,2]);
                    empleado2[j].raiz = id;
                    grandes -= 1;
                }
            }
        }
    }
}

if(instance_exists(o_calle)){
    grandes = instance_number(o_calle) - 1;
    repeat(argument1){
        mmm = instance_find(o_calle, irandom(grandes));
        instance_create(mmm.x - 12 + irandom(24), mmm.y - 12 + irandom(24), o_joven);
    }
}
else{
    repeat(argument1){
        instance_create(300 + irandom(room_width - 600), 300 + irandom(room_height - 600), o_joven);
    }
}

with(o_joven){
    crecio = true;
}

with(bloques){
    if(!object_is_ancestor(object_index, viviendas)){
        alarm[1] = 1;
    }
}

instance_create(0, 0, acelerador);
