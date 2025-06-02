if (!global.strep1) {
    show_message("Nevím, co s tím mám dělat...");
    exit;
}

var my_id = "cervena";
ds_list_add(global.skladane_masky, my_id);

if (ds_list_size(global.skladane_masky) == 3) {
    var correct = ["modra", "zluta", "cervena"];
    var success = true;

    for (var i = 0; i < 3; i++) {
        if (global.skladane_masky[| i] != correct[i]) {
            success = false;
            break;
        }
    }

    if (success) {
        show_message("Získal jsi druhý střep.");
		
        instance_create_layer(0, 0, "Objekty", obj_flashback2);
        global.strep2 = true;
    } else {
        show_message("Tohle nefunguje. Měla bych zkusit něco jiného.");
    }

    ds_list_clear(global.skladane_masky);
}
