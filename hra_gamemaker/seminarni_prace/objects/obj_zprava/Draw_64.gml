if (global.pickup_active)
{
    var w = display_get_gui_width();
    var h = 80;
    var bx = 0;
    var by = display_get_gui_height() - h;

    draw_set_alpha(0.85);
    draw_set_color(c_black);
    draw_rectangle(bx, by, bx + w, by + h, false);
    draw_set_alpha(1);

    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(-1); // nebo vlastní font
    draw_text(bx + w / 2, by + h / 2, global.pickup_message);
}
