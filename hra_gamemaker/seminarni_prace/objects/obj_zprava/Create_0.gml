// Výchozí stav pro zobrazení zprávy
if (!variable_global_exists("pickup_active")) {
    global.pickup_active = false;
}

if (!variable_global_exists("pickup_message")) {
    global.pickup_message = "";
}

if (!variable_global_exists("pickup_target")) {
    global.pickup_target = noone;
}
