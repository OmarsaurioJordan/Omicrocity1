ini_open("config_omty.ini");
for(i = 0; i < m_construcciones; i += 1){
    dispo[i] = 0;
    ini_write_string("avance", "d" + string(i), "0");
}
ini_write_string("avance", "antihack", "");
dispo[14] = 1;
ini_close();
