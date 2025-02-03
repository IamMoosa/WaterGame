if (hydration >= max_hydration && !once_watered) {
    once_watered = true;
    is_fully_watered = true;

    // Add score
    with (obj_game_controller) {
        add_plant_score(10);
        global.watered_plants += 1; // Increment the number of watered plants
    }
}
depth = -bbox_bottom;