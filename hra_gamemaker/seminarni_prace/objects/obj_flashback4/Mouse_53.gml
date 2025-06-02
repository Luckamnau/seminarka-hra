if (fade_done) {
    fade_in = false;

    show_message("Získal jsi třetí střep.");
	show_message("Megan: Už si vzpomínám.")
	show_message("Megan: Proč..proč jsem jí...")
	show_message("Dívka v zrcadle: Už máš všechny střepy. Poskládejme je dohromady.")
    global.strep3 = true;

    // Až teď odejdi z místnosti
    room_goto(zrcadlova_jidelna);
}
