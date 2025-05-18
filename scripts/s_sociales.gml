
    case "love":
        if(virus==0){
        for(i=0;i<instance_number(ciudadano);i+=1){
            aux=instance_find(ciudadano,i);
            if(point_distance(x,y,aux.x,aux.y)<vision and aux!=id){
                if(aux.estado=="libre" or aux.estado=="baila"){
                    if(aux.virus==0){
                        s_cambio(id,argument1,-1,-1,aux,0,0,actividades[11]);
                        s_cambio(aux,argument1,-1,-1,id,0,0,actividades[11]+1);
                        respuesta=true; break;}}}}} break;
    
    case "pelea":
        for(i=0;i<instance_number(ciudadano);i+=1){
            aux=instance_find(ciudadano,i);
            if(point_distance(x,y,aux.x,aux.y)<=vision and aux!=id){
                if(aux.estado=="libre"){
                    s_cambio(id,argument1,-1,-1,aux,0,0,actividades[14]);
                    s_cambio(aux,argument1,-1,-1,id,0,0,actividades[14]);
                    respuesta=true; break;}}} break;
    
    case "habla":
        for(i=0;i<instance_number(ciudadano);i+=1){
            aux=instance_find(ciudadano,i);
            if(point_distance(x,y,aux.x,aux.y)<=vision and aux!=id){
                if(aux.estado=="libre"){
                    s_cambio(id,argument1,-1,-1,aux,0,0,actividades[18]);
                    s_cambio(aux,argument1,-1,-1,id,0,0,actividades[18]);
                    respuesta=true; break;}}} break;
    
    case "celular":
        if(tabla[33,6]>0){
            var antena;
            antena=0;
            for(i=0;i<tabla[33,6];i+=1){
                aux=instance_find(o_comunicacion,i);
                if(aux.mienergia>0){
                    antena+=1;}}
            if(irandom(2+antena)>2){
                for(i=0;i<instance_number(ciudadano);i+=1){
                    aux=instance_find(ciudadano,i);
                    if(point_distance(x,y,aux.x,aux.y)>vision*3 and aux!=id){
                        if(aux.estado=="libre" and aux.object_index!=o_pobre){
                            s_cambio(id,argument1,-1,-1,aux,0,0,actividades[22]);
                            s_cambio(aux,argument1,-1,-1,id,0,0,actividades[22]);
                            respuesta=true; break;}}}}} break;
