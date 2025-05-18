//id
with(argument0){
    if(object_index == o_vampiro){//solo habilidad del vampiro
        var i, xx, yy, respuesta;
        respuesta = false;
        i = 0;
        do{
            xx = x - vision * 4 + irandom(vision * 8);
            yy = y - vision * 4 + irandom(vision * 8);
            if(xx > 96 and xx < room_width - 48 and yy > 128 and yy < room_height - 32 and
                    point_distance(x, y, xx, yy) < vision * 4 and point_distance(x, y, xx, yy) > vision){
                if(!place_meeting(xx, yy, bloques) and !place_meeting(xx, yy, otrosbloques)){
                    instance_create(x, y, o_morado);
                    x = xx;
                    y = yy;
                    virus = 0;//resistencia vampirica a enfermedad
                    gv = -1;
                    gn = -1;
                    instance_create(x, y + 1, o_morado);
                    respuesta = true;}}
            i += 1;
        }
        until(i > 19 or respuesta);
    }
}
