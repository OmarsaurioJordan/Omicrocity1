//true no importa camara cerca, true aparece por los lados
var xx, yy, cx, cy, ll;
cx = view_xview[0] + viw;
cy = view_hview[0] + vih;
ll = viw + vih * 0.5;
do{
    xx = 64 + irandom(room_width - 128);
    yy = 64 + irandom(room_height - 128);
    if(xx > 200 and xx < room_width - 200 and yy > 200 and yy < room_height - 200){
        if(argument1){
            xx = cx;
            yy = cy;
        }
    }
}
until(point_distance(xx, yy, cx, cy) > ll or argument0);

instance_create(xx, yy, o_animal);
