if (ds_list_find_index(global.collected_items, "klíč") != -1) {
    room_goto(sklep); // přechod do další místnosti
} else {
    show_message("Dveře jsou zamčené. Potřebuješ klíč.");
}
