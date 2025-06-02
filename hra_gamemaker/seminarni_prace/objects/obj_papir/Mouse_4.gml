if (!global.strep2) {
    show_message("Prvně bych měla udělat něco jiného...");
    exit;
}
// Zkontrolujeme, jestli má hráč všechny tři předměty
var ma_kytka = ds_list_find_index(global.collected_items, "květina") != -1;
var ma_naramek = ds_list_find_index(global.collected_items, "náramek") != -1;
var ma_medvidek = ds_list_find_index(global.collected_items, "medvídek") != -1;

if (ma_kytka) {
    with (obj_kytka_na_stole) { visible = true; }
}
if (ma_naramek) {
    with (obj_naramek_na_stole) { visible = true; }
}
if (ma_medvidek) {
    with (obj_medvidek_na_stole) { visible = true; }
}

if (ma_kytka && ma_naramek && ma_medvidek) {
    global.strep3_ready = true;
    instance_create_layer(0, 0, "Objekty", obj_flashback3);
}