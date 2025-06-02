// Zapsat do seznamu sebraných předmětů
if (!ds_list_find_index(global.collected_items, item_id) != -1) {
    ds_list_add(global.collected_items, item_id);
}

// Zobrazit zprávu
show_message("Sebral jsi klíč.");

// Zničit objekt
instance_destroy();
