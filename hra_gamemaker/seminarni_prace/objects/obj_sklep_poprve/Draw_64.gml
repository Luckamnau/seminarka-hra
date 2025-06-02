if (global.sklep_intro_step == 1 || global.sklep_intro_step == 2)
{
    var w = display_get_gui_width();
    var h = display_get_gui_height();

    // Černé pozadí
    draw_set_color(c_black);
    draw_set_alpha(0.9);
    draw_rectangle(0, 0, w, h, false);
    draw_set_alpha(1);

    // Obrázek do středu obrazovky
    draw_sprite(uvod, 0, w / 2, h / 2);
}
