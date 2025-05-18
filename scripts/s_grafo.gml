var yo;
yo = argument0;
if(instance_exists(o_calle)){
    if(s_confirma(yo.gn, o_calle)){
        if(point_distance(yo.x, yo.y, yo.gn.x, yo.gn.y) > cercano){
            with(yo){
                mp_potential_step_object(gn.x, gn.y, 0, bloques);
                speed = carrera;
            }
        }
        else{
            if(yo.gn.clase == -1){
                yo.gn = -1;
                yo.mobile = true;
            }
            else if(yo.gn.clase == 0){
                yo.gn = -1;
                s_actividades(yo, "deambulando");
            }
            else if(s_confirma(yo.gv, o_calle)){
                var vv, w, j;
                vv = yo.gv;
                yo.gv = yo.gn;
                j = 0;
                do{
                    w = choose(yo.gn.i_ar, yo.gn.i_ab, yo.gn.i_de, yo.gn.i_iz);
                    j += 1;
                }
                until(w != -1 and (w != vv or j > 11));
                yo.gn = w;
            }
            else{
                var w;
                yo.gv = yo.gn;
                do{
                    w = choose(yo.gn.i_ar, yo.gn.i_ab, yo.gn.i_de, yo.gn.i_iz);
                }
                until(w != -1);
                yo.gn = w;
            }
        }
    }
    else{
        yo.gn = instance_nearest(yo.x, yo.y, o_calle);
        yo.gv = -1;
    }
}
else{
    yo.mobile = true;
}
