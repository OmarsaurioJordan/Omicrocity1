//id
with(argument0){
    if(brazo == 3){
        brazo = 0;
    }
    else{
        brazo += 1;
    }
    if(brazo > 1){
        paso = 1;
    }
    else{
        paso = 0;
    }
    alarm[0] = velocitipos;
}
