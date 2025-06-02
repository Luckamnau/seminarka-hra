if (ds_list_find_index(global.collected_items, "oci_panenky") != -1) {

    if (!variable_global_exists("flashback_spusten") || !global.flashback_spusten) {
        global.flashback_spusten = true;

        // Spustíme flashback objekt (s obrázkem a efektem)
        instance_create_layer(0, 0, "Objekty", obj_flashback1);

        // Oči zmizí z inventáře
        ds_list_delete(global.collected_items, ds_list_find_index(global.collected_items, "oci_panenky"));
    } else {
        show_message("Už jsi viděl, co jsem chtěla ukázat...");
    }

} else {
    show_message("Najdi mé oči...");
}
