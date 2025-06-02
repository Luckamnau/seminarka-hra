// Fade-in obrázku
if (image_alpha < 1) {
    image_alpha += fade_speed;
} else {
    switch (global.zrcadlo_stage) {
        case 0:
            global.zrcadlo_stage = 1;
            alarm[0] = 1;
            break;
        case 2:
            global.zrcadlo_stage = 3;
            alarm[1] = 1;
            break;
        case 4:
            global.zrcadlo_stage = 5;
            alarm[2] = 1;
            break;
    }
}

// Fade to black
if (fade_to_black && black_alpha < 1) {
    black_alpha += 0.02;
}
