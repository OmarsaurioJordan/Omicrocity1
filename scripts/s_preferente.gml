//construccion id
var resultado;
resultado = false;
if(dispo[argument0] != 1){
    var hj;
    hj = 1 + dispo[0] + dispo[1] + dispo[2];
    if(tabla[16,6] >= 4 + 2 * hj and totalescosas[0] > 80 * hj){
        dispo[argument0] = 1;
        resultado = true;
        s_notibloqueo(argument0);
    }
}
return(resultado);
