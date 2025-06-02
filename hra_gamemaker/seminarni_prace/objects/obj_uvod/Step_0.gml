switch (fade_state) {
    case 0: // fade in
        fade_alpha -= 0.05;
        if (fade_alpha <= 0) {
            fade_alpha = 0;
            fade_state = 1;
        }
        break;

    case 1: // čeká na klik
        if (mouse_check_button_pressed(mb_left)) {
            fade_state = 2;
        }
        break;

    case 2: // fade out
        fade_alpha += 0.05;
        if (fade_alpha >= 1) {
            instance_destroy(); // zmizí po fade-outu
        }
        break;
}
