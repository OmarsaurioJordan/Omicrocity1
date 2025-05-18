//tipo notificacion, mensaje extra (ej. hubicacion)
var aux, ngl;
ngl = argument1;
if(ngl != "" and string_digits(ngl) == ngl){
    ngl = real(ngl);
    ngl = s_sumangulos(ngl, 90);
    ngl = round(ngl / 30);
    switch(ngl){
        case 1:
            ngl = 5; break;
        case 2:
            ngl = 4; break;
        case 3:
            ngl = 3; break;
        case 4:
            ngl = 2; break;
        case 5:
            ngl = 1; break;
        case 6:
            ngl = 12; break;
        case 7:
            ngl = 11; break;
        case 8:
            ngl = 10; break;
        case 9:
            ngl = 9; break;
        case 10:
            ngl = 8; break;
        case 11:
            ngl = 7; break;
        default:
            ngl = 6; break;}
    
    ngl = string(ngl) + "hours";
}
aux = instance_create(0, view_hview[0] + 10, notificacion);
aux.tipo = argument0 - 2;
aux.mensaje = titulos[argument0] + "#" + ngl;
