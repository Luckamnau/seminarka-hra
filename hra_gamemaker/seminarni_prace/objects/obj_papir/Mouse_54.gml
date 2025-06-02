// Pokud nemáš všechny věci → můžeš odejít
var ma_kytka = ds_list_find_index(global.collected_items, "kytka") != -1;
var ma_naramek = ds_list_find_index(global.collected_items, "naramek") != -1;
var ma_medvidek = ds_list_find_index(global.collected_items, "medvidek") != -1;

if (!(ma_kytka && ma_naramek && ma_medvidek)) {
    room_goto(zrcadlova_jidelna);
}
