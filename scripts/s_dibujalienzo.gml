var i, j, aux, cfil;

if(!surface_exists(control.lienzo)){
    control.lienzo = surface_create(control.mapx, control.mapy);
}
surface_set_target(control.lienzo);
cfil = make_colour_rgb(189, 222, 156);
draw_rectangle_colour(0, 0, control.mapx, control.mapy, cfil, cfil, cfil, cfil, false);

cfil = make_colour_rgb(103, 83, 67);
for(i = 0; i < control.mapx; i += 1){
    for(j = 0; j < control.mapy; j += 1){
        if(collision_point(i * 48 + 24, j * 32 + 16, bloques, 1, 1)){
            draw_point_colour(i, j, c_dkgray);
        }
        else if(collision_point(i * 48 + 24, j * 32 + 16, otrosbloques, 1, 1)){
            draw_point_colour(i, j, cfil);
        }
        else if(tile_layer_find(2000, i * 48 + 24, j * 32 + 16)){
            draw_point_colour(i, j, c_gray);
        }
    }
}

surface_reset_target();
