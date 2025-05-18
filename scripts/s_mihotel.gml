if(tabla[26,6] > 0){
    var i, j, aux, fin;
    fin = false;
    for(i = 0; i < tabla[26,6]; i+= 1){
        aux = instance_find(o_hotel, i);
        for(j = 0; j < tabla[26,3]; j += 1){
            if(aux.empleado2[j] == -1){
                argument0.raiz = aux;
                aux.empleado2[j] = argument0;
                fin = true;
                break;
            }
        }
        if(fin){
            break;
        }
    }
}
