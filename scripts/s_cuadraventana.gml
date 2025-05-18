var aux1, aux2;
aux2 = round(display_get_height() * 0.9);
aux1 = round(aux2 / (view_hview[0] / view_wview[0]));
window_set_size(aux1, aux2);
aux1 = round((display_get_width() - aux1) * 0.5);
aux2 = round(display_get_height() * 0.04);
window_set_position(aux1, aux2);
room_caption = "Omicrocity";
