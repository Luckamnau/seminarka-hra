var w = display_get_gui_width();
var h = display_get_gui_height();

// Vykreslí obrázek (nahraď jménem svého sprite)
draw_sprite(uvod, 0, w / 2 - sprite_get_width(uvod) / 2, h / 2 - sprite_get_height(uvod) / 2);

// Překryv pro fade efekt
draw_set_color(c_black);
draw_set_alpha(fade_alpha);
draw_rectangle(0, 0, w, h, false);
draw_set_alpha(1);
