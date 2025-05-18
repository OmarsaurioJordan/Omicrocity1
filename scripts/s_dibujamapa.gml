//nombre archivo
var fff, j, m_escala;
m_escala = control.img_escala;
fff = surface_create(round(room_width * m_escala), round(room_height * m_escala));
surface_set_target(fff);
draw_clear_alpha(c_black, 0);
draw_background_tiled_ext(d_pasto, 0, 0, m_escala, m_escala, -1, 1);
with(o_calle){
    var ii;
    
    if(i_de != -1){
        ii = 48;
        while(x + ii != i_de.x){
            draw_background_ext(d_baldo5, (x + ii - 24) * m_escala, (y - 16) * m_escala, m_escala, m_escala, 0, -1, 1);
            ii += 48;
        }
    }
    
    if(i_ab != -1){
        ii = 32;
        while(y + ii != i_ab.y){
            draw_background_ext(d_baldo6, (x - 24) * m_escala, (y + ii - 16) * m_escala, m_escala, m_escala, 0, -1, 1);
            ii += 32;
        }
    }
    
    switch(clase){
        case 0:
            draw_background_ext(d_baldo0, (x - 24) * m_escala, (y - 16) * m_escala, m_escala, m_escala, 0, -1, 1); break;
        case 1:
            draw_background_ext(d_baldo1, (x - 24) * m_escala, (y - 16) * m_escala, m_escala, m_escala, 0, -1, 1); break;
        case 2:
            draw_background_ext(d_baldo2, (x - 24) * m_escala, (y - 16) * m_escala, m_escala, m_escala, 0, -1, 1); break;
        case 3:
            draw_background_ext(d_baldo3, (x - 24) * m_escala, (y - 16) * m_escala, m_escala, m_escala, 0, -1, 1); break;
        case 4:
            draw_background_ext(d_baldo4, (x - 24) * m_escala, (y - 16) * m_escala, m_escala, m_escala, 0, -1, 1); break;
        case 5:
            draw_background_ext(d_baldo5, (x - 24) * m_escala, (y - 16) * m_escala, m_escala, m_escala, 0, -1, 1); break;
        case 6:
            draw_background_ext(d_baldo6, (x - 24) * m_escala, (y - 16) * m_escala, m_escala, m_escala, 0, -1, 1); break;
        case 7:
            draw_background_ext(d_baldo7, (x - 24) * m_escala, (y - 16) * m_escala, m_escala, m_escala, 0, -1, 1); break;
        case 8:
            draw_background_ext(d_baldo8, (x - 24) * m_escala, (y - 16) * m_escala, m_escala, m_escala, 0, -1, 1); break;
        case 9:
            draw_background_ext(d_baldo9, (x - 24) * m_escala, (y - 16) * m_escala, m_escala, m_escala, 0, -1, 1); break;
        case 10:
            draw_background_ext(d_baldo10, (x - 24) * m_escala, (y - 16) * m_escala, m_escala, m_escala, 0, -1, 1); break;
        case 11:
            draw_background_ext(d_baldo11, (x - 24) * m_escala, (y - 16) * m_escala, m_escala, m_escala, 0, -1, 1); break;
        case 12:
            draw_background_ext(d_baldo12, (x - 24) * m_escala, (y - 16) * m_escala, m_escala, m_escala, 0, -1, 1); break;
        case 13:
            draw_background_ext(d_baldo13, (x - 24) * m_escala, (y - 16) * m_escala, m_escala, m_escala, 0, -1, 1); break;
        case 14:
            draw_background_ext(d_baldo14, (x - 24) * m_escala, (y - 16) * m_escala, m_escala, m_escala, 0, -1, 1); break;
        case 15:
            draw_background_ext(d_baldo15, (x - 24) * m_escala, (y - 16) * m_escala, m_escala, m_escala, 0, -1, 1); break;}
}

for(j = 0; j <= room_height; j += 8){
    with(o_arbol){
        if(y == j){
            draw_sprite_ext(d_arbol, irandom(8), x * m_escala, y * m_escala, m_escala, m_escala, 0, -1, 1);
        }
    }
    with(bloques){
        if(y == j){
            draw_sprite_ext(d_edificios, xyz, x * m_escala, y * m_escala, m_escala, m_escala, 0, -1, 1);
            draw_sprite_ext(d_luces, xyz, x * m_escala, y * m_escala, m_escala, m_escala, 0, -1, 1);
            switch(xyz){
                case 36:
                    draw_sprite_ext(d_piezas, 0, (x + 2) * m_escala, (y - 51) * m_escala,
                        m_escala,m_escala, irandom(359), -1, 1);
                break;
                case 37:
                    draw_sprite_ext(d_piezas, 1, (x + 23) * m_escala, (y - 38) * m_escala,
                        m_escala, m_escala, irandom(359), -1, 1);
                break;
                case 38:
                    draw_sprite_ext(d_piezas, 2, (x - 32) * m_escala, (y - 26) * m_escala,
                        m_escala, m_escala, irandom(359), -1, 1);
                break;
            }
        }
    }
    with(o_mina){
        if(y == j){
            draw_sprite_ext(d_edificios, 39, x * m_escala, y * m_escala, m_escala, m_escala, 0, -1, 1);
        }
    }
    with(o_piramide){
        if(y == j){
            draw_sprite_ext(d_edificios, 40, x * m_escala, y * m_escala, m_escala, m_escala, 0, -1, 1);
        }
    }
}

surface_reset_target();
surface_save(fff, argument0);
surface_free(fff);
