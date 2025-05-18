if(!file_exists("config_omty.ini")){
    instance_create(0, 0, todoinfo);
}
ini_open("config_omty.ini");
if(ini_read_string("configuracion", "version", "0") != m_version){
    ini_write_string("configuracion", "version", m_version);
    if(file_exists("constantes_omty.ini")){
        file_delete("constantes_omty.ini");
    }
}
ini_close();
if(!file_exists("constantes_omty.ini")){
    file_copy("origi_cnstnts.ini", "constantes_omty.ini");
}

s_subconstantes();
s_lasparticulas();

globalvar botaparts, cuantasparts, pidenergia, velocitipos, vision, altrabajo, logro,
reproduction, dispo, abajar, carrera, creaciontime, fondos, totalescosas, actividades,
cercano, cambiopasos, titulos, ensayo, fuerzas, desecho, zonido, xonido, traspaso, hardcore;

botaparts = 3;//cada cuantos steps se botan particulas
cuantasparts = 1;//numero de particulas creadas en un step
fondos = 0;//mi dinero
ensayo = false;//modo debug

//llevar estadisticas totales
totalescosas[0] = 0;//ciudadanos
totalescosas[1] = 0;//edificios
totalescosas[2] = 0;//viviendas
totalescosas[3] = 0;//energia consumida
totalescosas[4] = 0;//energia generada
totalescosas[5] = 0;//costo ciudad
totalescosas[6] = 0;//contaminacion
totalescosas[7] = 0;//jovenes
totalescosas[8] = 0;//record poblacion

ini_open("constantes_omty.ini");

var i, iniaux;
iniaux = real(ini_read_string("otrasconstantes", "actiminimo", "90"));
for(i = 0; i < 25; i += 1){
    actividades[i] = iniaux * real(ini_read_string("actividades", "a" + string(i), "1"));
}
pidenergia = real(ini_read_string("otrasconstantes", "pidenergia", "60"));
velocitipos = real(ini_read_string("otrasconstantes", "velocitipos", "3"));
vision = real(ini_read_string("otrasconstantes", "vision", "96"));
cercano = real(ini_read_string("otrasconstantes", "cercano", "32"));
carrera = real(ini_read_string("otrasconstantes", "carrera", "2"));
creaciontime = real(ini_read_string("otrasconstantes", "creaciontime", "1800"));
cambiopasos = real(ini_read_string("otrasconstantes", "cambiopasos", "30"));
altrabajo = real(ini_read_string("otrasconstantes", "altrabajo", "7"));
reproduction = real(ini_read_string("otrasconstantes", "reproduction", "4"));
fuerzas = real(ini_read_string("otrasconstantes", "fuerzas", "6"));
abajar = real(ini_read_string("otrasconstantes", "abajar", "20"));
desecho = real(ini_read_string("otrasconstantes", "desecho", "8"));
zonido = real(ini_read_string("sound", "aleatorysound", "4"));
hardcore = real(ini_read_string("otrasconstantes", "hardcore", "19"));
xonido = round(zonido*0.5);
audio_channel_num( real(ini_read_string("sound", "chanels", "100")) );

ini_close();

ini_open("config_omty.ini");

if(!ini_key_exists("configuracion", "img_scale_export")){
    ini_write_string("configuracion", "img_scale_export", "0.75");
}
control.img_escala = real(ini_read_string("configuracion", "img_scale_export", "0.75"));

control.nombre = ini_read_string("configuracion", "actual", "");
if(ini_read_string("configuracion", "idioma", "") == ""){
    if(os_get_language() == "es"){
        control.idioma = 0;
    }
    else{
        control.idioma = 1;
    }
}
else{
    control.idioma = real(ini_read_string("configuracion", "idioma", "1"));
}

traspaso = real(ini_read_string("configuracion", "traspaso", "-1"));
if(ini_read_string("configuracion", "full", "0") == "1"){
    control.alarm[6] = 2;
}

var men;
men = "";
for(i = 0; i < m_construcciones; i += 1){
    dispo[i] = real(ini_read_string("avance", "d" + string(i), "0"));
    men += string(dispo[i]);
}
if(md5_string_unicode(base64_encode(men) + "10001001110") != ini_read_string("avance", "antihack", "")){
    for(i = 0; i < m_construcciones; i += 1){
        dispo[i] = 0;
    }
}
dispo[14] = 1;

men = "";
for(i = 0; i < 36; i += 1){
    logro[i] = real(ini_read_string("logros", "l" + string(i), "0"));
    men += string(logro[i]);
}
if(md5_string_unicode(base64_encode(men) + "10001001110") != ini_read_string("logros", "antihack", "")){
    for(i = 0; i < 36; i += 1){
        logro[i] = 0;
    }
}

control.sonido = real(ini_read_string("configuracion", "sonido", "1"));
control.priori = real(ini_read_string("configuracion", "prioridesbloqueo", string(irandom(5))));
if(control.sonido > 1){
    control.sonido = 1;
}
else if(control.sonido < 0){
    control.sonido = 0;
}

ini_close();

s_idiomas(control.idioma);
s_leyendo(control.nombre);
