// Výchozí pozice cíle – ještě nikam nebylo kliknuto
xx = -1;
yy = -1;

// Rychlost pohybu postavy
spd = 3.5;

// Poslední známý směr pohybu (pro idle animaci)
last_direction = "down";

// Sprity chůze pro každý směr
chuze_nahoru = megan_wlk_nahoru;
chuze_dolu = megan_wlk_dolu;
chuze_vlevo = megan_wlk_l;
chuze_vpravo = megan_wlk_r;

idle = megan_idle