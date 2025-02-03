// obj_wateringcan Step Event
var player = instance_nearest(x, y, obj_player);
if (player != noone) {
    var nearest_plant = instance_nearest(player.x, player.y, obj_plant);
    if (nearest_plant != noone && point_distance(player.x, player.y, nearest_plant.x, nearest_plant.y) < interaction_range) {
        show_can = true;
        x = player.x + 10;
        y = player.y - 10;
        
        // Watering plants
        if (keyboard_check(vk_space) && can_water) {
            if (water_level > 0 && !nearest_plant.once_watered) {
                water_level -= watering_rate;
                nearest_plant.hydration += watering_rate;
                nearest_plant.hydration = min(nearest_plant.hydration, nearest_plant.max_hydration);
                //effect_create_above(ef_rain, nearest_plant.x, nearest_plant.y, 0, c_blue);
            }
            
            if (water_level <= 0) {
                can_water = false;
                water_level = 0;
            }
        }
    } else {
        show_can = false;
    }
}

// Refill water can when 'R' is pressed
if (keyboard_check(ord("R"))) {
    if (global.total_water > 0 && water_level < max_water) {
        var transfer_amount = min(refill_rate, 
                                global.total_water, 
                                max_water - water_level);
        
        water_level += transfer_amount;
        global.total_water -= transfer_amount;
        can_water = true;
        
    }
}

depth = -bbox_bottom;