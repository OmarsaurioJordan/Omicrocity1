if(totalescosas[1] > 0){
    var xx, yy, cx, cy, ju;
    cx = round(room_width / 24) - 10;
    cy = round(room_height / 16) - 14;
    do{
        ju = false;
        xx = 144 + irandom(cx) * 24;
        yy = 160 + irandom(cy) * 16;
        if(xx >= 192 and xx <= room_width - 144 and yy >= 224 and yy <= room_height - 128){
            ju = true;
        }
    }
    until(!collision_circle(xx, yy, 12, bloques, 1, 1) and !collision_circle(xx, yy, 12, otrosbloques, 1, 1) and
        collision_circle(xx, yy, vision, bloques, 1, 1) and ju);
    argument0.mx = xx;
    argument0.my = yy;
}
