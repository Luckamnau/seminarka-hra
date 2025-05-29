if (xx != -1 && yy != -1) {
    // Ulož aktuální pozici
    var ox = x;
    var oy = y;

    // Pokus o pohyb
    mp_potential_step_object(xx, yy, spd, obj_kolize);

    // Pokud se pozice nezměnila => zřejmě kolize
    if (x == ox && y == oy) {
        // Zkus najít bod těsně před kolizí
        var dir = point_direction(x, y, xx, yy);
        var tx = x + lengthdir_x(-1, dir); // 1 pixel zpět
        var ty = y + lengthdir_y(-1, dir);

        if (!position_meeting(tx, ty, obj_kolize)) {
            x = tx;
            y = ty;
        }

        // Zastav pohyb
        xx = -1;
        yy = -1;
        is_moving = false;
    } else {
        is_moving = true;

        // Urči směr pohybu a nastav animaci (vylepšený směr)
        var dir = point_direction(x, y, xx, yy);

        if (dir > -22.5 && dir <= 22.5) {
            sprite_index = chuze_vpravo;
            last_direction = "right";
        }
        else if (dir > 22.5 && dir <= 67.5) {
            sprite_index = chuze_dolu;
            last_direction = "down";
        }
        else if (dir > 67.5 && dir <= 112.5) {
            sprite_index = chuze_dolu;
            last_direction = "down";
        }
        else if (dir > 112.5 && dir <= 157.5) {
            sprite_index = chuze_vlevo;
            last_direction = "left";
        }
        else if (dir > 157.5 || dir <= -157.5) {
            sprite_index = chuze_vlevo;
            last_direction = "left";
        }
        else if (dir > -157.5 && dir <= -112.5) {
            sprite_index = chuze_vlevo;
            last_direction = "left";
        }
        else if (dir > -112.5 && dir <= -67.5) {
            sprite_index = chuze_nahoru;
            last_direction = "up";
        }
        else if (dir > -67.5 && dir <= -22.5) {
            sprite_index = chuze_nahoru;
            last_direction = "up";
        }

        // Pokud jsme dorazili téměř do cíle (blíž než spd)
        if (point_distance(x, y, xx, yy) <= spd) {
            xx = -1;
            yy = -1;
            is_moving = false;
        }
    }
} else {
    is_moving = false;
}

// Pokud nechodí → idle animace
if (!is_moving) {
    sprite_index = megan_idle;
}
