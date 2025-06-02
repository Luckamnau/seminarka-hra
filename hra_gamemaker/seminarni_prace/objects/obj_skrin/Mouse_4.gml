if (ds_list_find_index(global.collected_items, "oci_panenky") == -1) {
    ds_list_add(global.collected_items, "oci_panenky");
    show_message("Sebral jsi oči panenky.");
} else {
    show_message("Ve skříni už nic není.");
}
