globalvar p_humo, p_vapor, p_fuego, p_agua, p_explosion, p_morado, p_lluvia, p_polvo;

p_humo = part_type_create();
part_type_shape(p_humo, pt_shape_smoke);
part_type_size(p_humo, 0.1, 0.2, 0.02, 0);
part_type_speed(p_humo, 1, 2, 0.02, 0);
part_type_direction(p_humo, 85, 95, 0, 0);
part_type_colour1(p_humo, c_dkgray);
part_type_alpha2(p_humo, 0.7, 0.2);
part_type_blend(p_humo, false);
part_type_life(p_humo, 20, 25);

p_vapor = part_type_create();
part_type_shape(p_vapor, pt_shape_smoke);
part_type_size(p_vapor, 0.1, 0.2, 0.02, 0);
part_type_speed(p_vapor, 1, 2, 0.02, 0);
part_type_direction(p_vapor, 85, 95, 0, 0);
part_type_colour1(p_vapor, c_gray);
part_type_alpha2(p_vapor, 0.7, 0.2);
part_type_blend(p_vapor, false);
part_type_life(p_vapor, 15, 20);

p_polvo = part_type_create();
part_type_shape(p_polvo, pt_shape_smoke);
part_type_size(p_polvo, 0.4, 0.5, 0.02, 0);
part_type_speed(p_polvo, 0.5, 2.5, 0.01, 0);
part_type_direction(p_polvo, 50, 130, 0, 0);
part_type_colour1(p_polvo, c_olive);
part_type_alpha2(p_polvo, 0.8, 0.2);
part_type_blend(p_polvo, false);
part_type_life(p_polvo, 20, 40);
part_type_gravity(p_polvo, 0.1, 90);

p_fuego = part_type_create();
part_type_shape(p_fuego, pt_shape_explosion);
part_type_size(p_fuego, 0.1, 0.1, 0.02, 0);
part_type_speed(p_fuego, 2, 2, 0.01, 0);
part_type_direction(p_fuego, 80, 100, 0, 0);
part_type_colour2(p_fuego, c_yellow, c_red);
part_type_alpha2(p_fuego, 0.8, 0.2);
part_type_blend(p_fuego, false);
part_type_life(p_fuego, 6, 10);

p_agua = part_type_create();
part_type_shape(p_agua, pt_shape_cloud);
part_type_size(p_agua, 0.2, 0.3, 0.1, 0);
part_type_speed(p_agua, 3, 5, 0.05, 0);
part_type_direction(p_agua, 80, 100, 0, 0);
part_type_colour2(p_agua, c_blue, c_aqua);
part_type_alpha2(p_agua, 0.8, 0.2);
part_type_blend(p_agua, false);
part_type_life(p_agua, 10, 16);
part_type_gravity(p_agua, 0.6, 270);

p_explosion = part_type_create();
part_type_shape(p_explosion, pt_shape_explosion);
part_type_size(p_explosion, 0.1, 0.2, 0.03, 0);
part_type_speed(p_explosion, 2, 3, 0.03, 0);
part_type_direction(p_explosion, 20, 160, 0, 0);
part_type_colour2(p_explosion, c_yellow, c_red);
part_type_alpha2(p_explosion, 0.8, 0.2);
part_type_blend(p_explosion, false);
part_type_life(p_explosion, 14, 24);

p_morado = part_type_create();
part_type_shape(p_morado, pt_shape_cloud);
part_type_size(p_morado, 0.1, 0.2, 0.03, 0);
part_type_speed(p_morado, 2, 3, 0.03, 0);
part_type_direction(p_morado, 60, 120, 0, 0);
part_type_colour1(p_morado, c_purple);
part_type_alpha2(p_morado, 0.8, 0.2);
part_type_blend(p_morado, false);
part_type_life(p_morado, 10, 20);

p_lluvia = part_type_create();
part_type_shape(p_lluvia, pt_shape_pixel);
part_type_size(p_lluvia, 1, 1.5, 0, 0);
part_type_speed(p_lluvia, 9, 9, 0, 0);
part_type_direction(p_lluvia, 250, 250, 0, 0);
part_type_colour1(p_lluvia, c_blue);
part_type_alpha3(p_lluvia, 0.6, 0.8, 0.2);
part_type_blend(p_lluvia, false);
part_type_life(p_lluvia, 20, 20);
