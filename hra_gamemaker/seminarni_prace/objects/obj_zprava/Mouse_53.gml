if (global.pickup_active)
{
    global.pickup_active = false;

    if (instance_exists(global.pickup_target)) {
        with (global.pickup_target) {
            instance_destroy();
        }
    }

    global.pickup_target = noone;
}
