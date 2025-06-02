if (global.sklep_intro_step == 2) {
    show_message("Megan: To...jsem já? Proč vypadám tak bledě? A proč jsem mokrá..?");
	show_message("Dívka v zrcadle: Najdi střepy zrcadla, ty ti ukážou pravdu...")
	global.show_intro = false;
	global.visited_sklep = true;
	global.sklep_intro_step = 3; // bezpečně uzavřeme intro

}

if (room_get_name(room) == "loznice" && !global.visited_loznice) {
    show_message("Megan: Kde to jsem? Co se stalo?");
	show_message("???: Prosím, pomoz...")
	show_message("Megan: Co to bylo?! Jde to z chodby..")
    global.visited_loznice = true;
}
if (room_get_name(room) == "chodba" && !global.visited_chodba) {
 show_message("Megan: Ozývalo se to z těch dveří nalevo!");
    global.visited_chodba = true;
}