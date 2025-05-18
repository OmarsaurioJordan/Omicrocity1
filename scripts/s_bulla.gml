//tipo, pos x, pos y, relativo
if(sonido==2){
var snd, pp, yes;
pp=1;
yes=true;
if(argument3){
    pp=point_distance(argument1,argument2,view_xview[0]+viw,view_yview[0]+vih);
    if(pp<vif){
        if(pp>vih-192){
            pp=(vif-vih+192)/(vif+pp-2*vih+384);}
        else{
            pp=1;}}
    else{
        yes=false;}}
if(yes){
    switch(argument0){
        case "fantasma":
            snd=audio_play_sound(a_fantasma,4,false); break;
        case "teleportacion":
            snd=audio_play_sound(a_teleportacion,4,false); break;
        case "plata":
            snd=audio_play_sound(a_plata,4,false); break;
        case "pajaro":
            snd=audio_play_sound(a_pajaro,4,false); break;
        default:
            show_message("bulla"); //quitar
            snd=audio_play_sound(a_a,0,false); break;}
    if(pp<1){
        audio_sound_gain(snd,pp,0);}}}
