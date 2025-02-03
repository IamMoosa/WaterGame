// obj_wateringcan Draw Event
if (show_can) {
    draw_self();
    draw_healthbar(x - 20, y + 30, x + 20, y + 35, 
        (water_level/max_water) * 100, 
        c_gray, c_blue, c_blue, 0, true, true);
    
    draw_set_color(c_white);
    draw_text(x - 20, y + 40, string(water_level) + "/" + string(max_water));
}