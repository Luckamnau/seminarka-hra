if (xx != -1 && yy != -1) {
    // Zkontrolujeme, jestli je místo dosažitelné – pokud ne, zrušíme cíl
    if (position_meeting(xx, yy, obj_kolize)) {
        xx = -1;
        yy = -1;
    }
    // Pokud je cílový bod v pohodě
    else if (point_distance(x, y, xx, yy) > spd) {
        mp_potential_step_object(xx, yy, spd, obj_kolize);

        var dir = point_direction(x, y, xx, yy);

       if (dir >= -45 && dir <= 45) {
    sprite_index = chuze_vpravo;
    last_direction = "right";
}
else if (dir > 45 && dir < 135) {
    sprite_index = chuze_dolu;
    last_direction = "down";
}
else if (dir >= 135 || dir <= -135) {
    sprite_index = chuze_vlevo;
    last_direction = "left";
}
else if (dir > -135 && dir < -45) {
    sprite_index = chuze_nahoru;
    last_direction = "up";
}


    } else {
        // Došla na místo → idle podle posledního směru
        switch (last_direction) {
            case "right": sprite_index = megan_idle; break;
            case "down":  sprite_index = megan_idle; break;
            case "left":  sprite_index = megan_idle; break;
            case "up":    sprite_index = megan_idle; break;
        }

        xx = -1;
        yy = -1;
    }
} else {
    // Nejde nikam → zůstane v idle
    switch (last_direction) {
        case "right": sprite_index = megan_idle; break;
        case "down":  sprite_index = megan_idle; break;
        case "left":  sprite_index = megan_idle; break;
        case "up":    sprite_index = megan_idle; break;
    }
}
