display_set_gui_size(1920, 1280);

global.visited_sklep = false;
global.sklep_intro_step = 0;
global.show_intro = false;

global.visited_loznice = false;
global.visited_chodba = false;



//1. Vytvoření seznamu, pokud ještě neexistuje
if (!variable_global_exists("navstivene_mistnosti")) {
    global.navstivene_mistnosti = ds_list_create();
}

//2. Získání názvu aktuální místnosti
var nazev_mistnosti = room_get_name(room);

//3. Zápis do seznamu, pokud tam ještě není
if (ds_list_find_index(global.navstivene_mistnosti, nazev_mistnosti) == -1) {
    ds_list_add(global.navstivene_mistnosti, nazev_mistnosti);
}


global.skladane_masky = ds_list_create(); // pro pořadí kliknutí
global.strep1 = false; // získaný první střep?
global.strep2 = false; // získaný druhý střep?
global.strep3 = false;


