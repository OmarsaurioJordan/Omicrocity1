var yo;
yo=argument0;
if(instance_exists(o_calle)){
    if(!instance_exists(ratoncalles)){
        if(s_confirma(yo.gn,o_calle)){
            if(point_distance(yo.x,yo.y,yo.gn.x,yo.gn.y)>cercano){
                if(s_confirma(yo.gv,-1)){
                    if(yo.gn.x==yo.gv.x or yo.gn.y==yo.gv.y){
                        with(yo){
                            mp_potential_step_object(gn.x,gn.y,0,bloques);
                            speed=carrera;}}
                    else{
                        yo.gn=-1;
                        yo.gv=-1;}}
                else{
                    with(yo){
                        mp_potential_step_object(gn.x,gn.y,0,bloques);
                        speed=carrera;}}}
            else{
                if(yo.gn.clase==-1 or yo.gn.clase==0){
                    yo.gn=-1;
                    yo.gv=-1;
                    yo.speed=0;}
                else if(s_confirma(yo.gv,o_calle)){
                    var vv;
                    vv=yo.gv;
                    yo.gv=yo.gn;
                    switch(yo.gn.clase){
                        case 1:
                            yo.gn=yo.gn.i_de; break;
                        case 2:
                            yo.gn=yo.gn.i_ar; break;
                        case 3:
                            yo.gn=yo.gn.i_iz; break;
                        case 4:
                            yo.gn=yo.gn.i_ab; break;
                        case 5:
                            do{
                                yo.gn=choose(yo.gn.i_de,yo.gn.i_iz);}
                            until(yo.gn!=vv); break;
                        case 6:
                            do{
                                yo.gn=choose(yo.gn.i_de,yo.gn.i_iz);}
                            until(yo.gn!=vv); break;
                        case 7:
                            do{
                                yo.gn=choose(yo.gn.i_de,yo.gn.i_ar);}
                            until(yo.gn!=vv); break;
                        case 8:
                            do{
                                yo.gn=choose(yo.gn.i_ar,yo.gn.i_iz);}
                            until(yo.gn!=vv); break;
                        case 9:
                            do{
                                yo.gn=choose(yo.gn.i_ab,yo.gn.i_iz);}
                            until(yo.gn!=vv); break;
                        case 10:
                            do{
                                yo.gn=choose(yo.gn.i_de,yo.gn.i_ab);}
                            until(yo.gn!=vv); break;
                        case 11:
                            do{
                                yo.gn=choose(yo.gn.i_de,yo.gn.i_iz,yo.gn.i_ar);}
                            until(yo.gn!=vv); break;
                        case 12:
                            do{
                                yo.gn=choose(yo.gn.i_ab,yo.gn.i_iz,yo.gn.i_ar);}
                            until(yo.gn!=vv); break;
                        case 13:
                            do{
                                yo.gn=choose(yo.gn.i_de,yo.gn.i_iz,yo.gn.i_ab);}
                            until(yo.gn!=vv); break;
                        case 14:
                            do{
                                yo.gn=choose(yo.gn.i_de,yo.gn.i_ab,yo.gn.i_ar);}
                            until(yo.gn!=vv); break;
                        case 15:
                            do{
                                yo.gn=choose(yo.gn.i_de,yo.gn.i_iz,yo.gn.i_ar,yo.gn.i_ab);}
                            until(yo.gn!=vv); break;}}
                else{
                    yo.gv=yo.gn;
                    switch(yo.gn.clase){
                        case 1:
                            yo.gn=yo.gn.i_de; break;
                        case 2:
                            yo.gn=yo.gn.i_ar; break;
                        case 3:
                            yo.gn=yo.gn.i_iz; break;
                        case 4:
                            yo.gn=yo.gn.i_ab; break;
                        case 5:
                            yo.gn=choose(yo.gn.i_de,yo.gn.i_iz); break;
                        case 6:
                            yo.gn=choose(yo.gn.i_de,yo.gn.i_iz); break;
                        case 7:
                            yo.gn=choose(yo.gn.i_de,yo.gn.i_ar); break;
                        case 8:
                            yo.gn=choose(yo.gn.i_ar,yo.gn.i_iz); break;
                        case 9:
                            yo.gn=choose(yo.gn.i_ab,yo.gn.i_iz); break;
                        case 10:
                            yo.gn=choose(yo.gn.i_de,yo.gn.i_ab); break;
                        case 11:
                            yo.gn=choose(yo.gn.i_de,yo.gn.i_iz,yo.gn.i_ar); break;
                        case 12:
                            yo.gn=choose(yo.gn.i_ab,yo.gn.i_iz,yo.gn.i_ar); break;
                        case 13:
                            yo.gn=choose(yo.gn.i_de,yo.gn.i_iz,yo.gn.i_ab); break;
                        case 14:
                            yo.gn=choose(yo.gn.i_de,yo.gn.i_ab,yo.gn.i_ar); break;
                        case 15:
                            yo.gn=choose(yo.gn.i_de,yo.gn.i_iz,yo.gn.i_ar,yo.gn.i_ab); break;}}}}
        else{
            yo.gn=collision_circle(yo.x,yo.y,vision,o_calle,1,1);
            if(!yo.gn){
                yo.gn=instance_nearest(yo.x,yo.y,o_calle);}
            yo.gv=-1;}}
    else{
        if(s_confirma(yo.gn,o_calle)){
            if(point_distance(yo.x,yo.y,yo.gn.x,yo.gn.y)>cercano){
                with(yo){
                    mp_potential_step_object(gn.x,gn.y,0,bloques);
                    speed=carrera;}}
            else{
                yo.gn=-1;}}
        else{
            var vv, xg, yg, dg, rg;
            dg=vision+irandom(vision);
            rg=irandom(359);
            xg=yo.x+lengthdir_x(dg,rg);
            yg=yo.y+lengthdir_y(dg,rg);
            vv=instance_nearest(xg,yg,o_calle);
            if(point_distance(yo.x,yo.y,vv.x,vv.y)<vision and point_distance(yo.x,yo.y,vv.x,vv.y)>cercano*2){
                yo.gn=vv;}}}}
else{
    yo.mobile=true;}
