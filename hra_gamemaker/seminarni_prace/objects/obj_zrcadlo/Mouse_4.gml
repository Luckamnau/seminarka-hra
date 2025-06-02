// Spustí fade-out a pak přejde do další místnosti
if (variable_global_exists("show_intro") && global.show_intro == true) {
    exit; // nedělej nic
}
var f = instance_create_layer(0, 0, "Objekty", obj_fade_out);
f.target_room = zrcadlovy_sklep