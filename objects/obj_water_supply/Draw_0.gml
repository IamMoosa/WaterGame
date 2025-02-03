// Set transparency and draw the background rectangle
draw_set_alpha(0.8);
draw_rectangle_color(ui_x, ui_y, ui_x + ui_width, ui_y + ui_height, 
    c_black, c_black, c_black, c_black, false);
    
// Draw the water supply bar as a health bar
draw_healthbar(ui_x + 2, ui_y + 2, ui_x + ui_width - 2, ui_y + ui_height - 2, 
    (global.total_water / global.max_total_water) * 100, 
    c_gray, c_blue, c_blue, 0, true, true);
    
// Reset alpha and draw text below the bar
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_font(fnt_score);
draw_text(ui_x, ui_y + ui_height + 2, "Water: " + string(global.total_water));
