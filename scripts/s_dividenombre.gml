with(control){
    var i, dg;
    for(i = 0; i < m_construcciones; i += 1){
        dg = string_pos("|", lainfo[i]);
        if(dg > 1){
            laname[i] = string_copy(lainfo[i], 1, dg - 1);
            lainfo[i] = string_delete(lainfo[i], 1, dg);
        }
        else{
            laname[i] = "";
        }
    }
}

s_requisitos();
