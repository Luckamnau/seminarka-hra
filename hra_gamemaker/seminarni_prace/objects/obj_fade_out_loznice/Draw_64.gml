// Vyčisti GUI plochu na černou (volitelné, ale jistota)
draw_clear_alpha(c_black, 0); // průhledné černé pozadí

// Získání velikosti GUI plochy
var w = display_get_gui_width();
var h = display_get_gui_height();

// Nakresli logo doprostřed
draw_sprite(uvod, 0, w / 2, h / 2);

// Překryj fade efektem
draw_set_alpha(fade_alpha);
draw_set_color(c_black);
draw_rectangle(0, 0, w, h, false);
draw_set_alpha(1);


