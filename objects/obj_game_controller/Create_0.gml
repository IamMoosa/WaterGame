global.plant_score = 0;
global.total_plants = 0; // Total number of plants in the room
global.watered_plants = 0; // Number of plants that are fully watered
persistent = true;

add_plant_score = function(amount) {
    global.plant_score += amount;
};
