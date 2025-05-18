//id
with(argument0){
    if(x > room_width - 48){
        x = room_width - 48;
        direction = 135 + irandom(90);
    }
    else if(x < 96){
        x = 96;
        direction = 315 + irandom(90);
    }
    if(y > room_height - 32){
        y = room_height - 32;
        direction = 45 + irandom(90);
    }
    else if(y < 128){
        y = 128;
        direction = 225 + irandom(90);
    }
    depth = y * -10;
}
