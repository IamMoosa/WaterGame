// obj_plant Draw Event
draw_self();
draw_healthbar(x - 15, y + 20, x + 15, y + 25, 
    (hydration/max_hydration) * 100, 
    c_gray, c_green, c_green, 0, true, true);