if (state == 0 && mouse_check_button_pressed(mb_left)) {
    state = 1;
}
if (state == 1) {
    fade_alpha += fade_speed;
    if (fade_alpha >= 1) {
        room_goto(loznice); // Cílová místnost
    }
}

