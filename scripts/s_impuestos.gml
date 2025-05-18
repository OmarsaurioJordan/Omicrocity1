//id quien paga
var alza;
if(totalescosas[0] < 50){
    alza = 3;
}
else if(totalescosas[0] < 100){
    alza = 2;
}
else{
    alza = 1;
}
switch(object_get_name(argument0.object_index)){
    case "o_pobre":
        s_plata(1 * alza);
    break;
    case "o_promedio": case "o_vampiro":
        s_plata(2 * alza);
    break;
    case "o_urbano": case "o_futuro":
        s_plata(3 * alza);
    break;
    case "o_turista":
        s_plata(4 * alza);
    break;
    case "o_rico":
        s_plata(7 * alza);
    break;
}
