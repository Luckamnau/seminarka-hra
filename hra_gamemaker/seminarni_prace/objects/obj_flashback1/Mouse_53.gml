// Klik funguje JEN pokud fade-in je dokončen
if (fade_done) {

    // Zviditelní oči
    if (instance_exists(global.oci_id)) {
        global.oci_id.visible = true;
    }

    // Zobrazí zprávu PO flashbacku
	show_message("Získal jsi první střep.");
	show_message("Megan: To jsem já a... já?")
	show_message("Megan: Vždyť to nedává smysl! Co se tu děje?!")

	global.strep1 = true;


    // Spustí fade-out
    fade_in = false;
}
