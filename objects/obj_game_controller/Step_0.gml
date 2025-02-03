if (global.watered_plants == global.total_plants && instance_exists(obj_door_wall)) {
    with (obj_door_wall) {
        instance_destroy();
    }
}
