var w = display_get_gui_width();
var h = display_get_gui_height();

// Zobraz obrázek
draw_set_alpha(image_alpha);
draw_sprite(global.zrcadlo_sprite, 0, w / 2, h / 2);
draw_set_alpha(1);

// Černý fade na konci
if (fade_to_black) {
    draw_set_alpha(black_alpha);
    draw_set_color(c_black);
    draw_rectangle(0, 0, w, h, false);
    draw_set_alpha(1);
}
