//id
with(argument0){
    if(raiz != -1){
        s_borreme(id, raiz);
        if(raiz.alarm[1] == -1){
            raiz.alarm[1] = creaciontime;
        }
    }
}
