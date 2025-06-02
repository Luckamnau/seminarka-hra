if (room_get_name(room) == "sklep" && !global.visited_sklep) {
    global.sklep_intro_step = 1; // spusť úvod
}

if (room_get_name(room) == "loznice" && !global.visited_loznice) {
    alarm[0] = 90; // čekej 90 kroků = cca 3 sekundy
}
if (room_get_name(room) == "chodba" && !global.visited_chodba) {
   
	alarm[0] = 90;
}

if (room_get_name(room) == "zrcadlovy_sklep" && global.strep3 == true) {
    // Spustíme finální sekvenci
    global.zrcadlo_stage = 0;
    instance_create_layer(0, 0, "Objekty", obj_konec);
}

