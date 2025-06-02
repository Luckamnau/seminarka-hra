var w = display_get_gui_width();
var h = display_get_gui_height();

// FADE IN
if (fade_in && image_alpha < 1) {
    image_alpha += fade_speed;
    if (image_alpha >= 1) {
        image_alpha = 1;
        fade_done = true;
    }

// FADE OUT
} else if (!fade_in && image_alpha > 0) {
    image_alpha -= fade_speed;
    if (image_alpha <= 0) {
        image_alpha = 0;
        instance_destroy();
    }
}

// Vykreslení sprite
draw_set_alpha(image_alpha);
draw_sprite(flashback_2, 0, w/2, h/2);
draw_set_alpha(1);
