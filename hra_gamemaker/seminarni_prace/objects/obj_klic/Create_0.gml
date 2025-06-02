item_id = "klic";
if (ds_list_find_index(global.collected_items, item_id) != -1) {
    instance_destroy(); // Už byl sebrán, tak ho zničíme hned
}