if (fade_done) {
    fade_in = false;

    // Po dokončení flashback3 → spustíme flashback4
    if (global.strep3_ready) {
        instance_create_layer(0, 0, "Objekty", obj_flashback4);
    }
}
