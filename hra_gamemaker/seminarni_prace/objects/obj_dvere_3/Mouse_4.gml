
if (ds_list_find_index(global.collected_items, "klic") != -1) {
    // Vytvoříme fade objekt a nastavíme cílovou místnost
    var f = instance_create_layer(0, 0, "Objekty", obj_fade_out);
    f.target_room = sklep;
} else {
    show_message("Dveře jsou zamčené. Potřebuju klíč");
}
