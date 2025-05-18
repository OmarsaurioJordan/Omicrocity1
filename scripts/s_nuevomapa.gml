var xx, yy, xw, yh, i;
xw = round(room_width / 24);
yh = round(room_height / 16);

control.nombre = "";
control.dias = 0;
control.years = 0;

fondos = tabla[14, 5] * 60;//plata inicial

for(i = 0; i < 8; i++){
    control.elbonus[i] = 0;
}

repeat(round(xw * yh * 0.1)){
    xx = 12 + irandom(xw) * 24;
    yy = 8 + irandom(yh) * 16;
    instance_create(xx, yy, o_arbol);
}
repeat(1 + choose(2, 1, 1, 0, 0)){
    xx = 96 + irandom(room_width - 144);
    yy = 128 + irandom(room_height - 160);
    instance_create(xx, yy, o_piramide);
}
repeat(round(xw * yh * 0.001)){
    s_creanimal(false, false);
}
