//id
with(argument0){
    if(estado != "panico" and estado != "preso" and estado != "encaleta"){
        var otrocoso;
        otrocoso = collision_circle(x, y, vision * 1.5, o_heroe, 1, 1);
        if(!otrocoso){
            otrocoso = collision_circle(x, y, vision * 1.5, o_policia, 1, 1);}
        if(otrocoso){
            meta = otrocoso;
            s_actividades(id, "hulle");
        }
        else if(object_index == o_ladron){
            otrocoso = s_robar(id);
            if(otrocoso > -1){
                meta = otrocoso;
                s_actividades(id, "asecha");
            }
        }
    }
}
