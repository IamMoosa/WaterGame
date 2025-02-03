draw_set_color(c_white);
draw_set_font(fnt_score); // Use default font if no custom font
draw_set_halign(fa_right); // Align text to the right
draw_text(room_width - 10, 10, "Score: " + string(global.plant_score)); // Adjust position

//draw_set_color(c_white);
//draw_set_font(fnt_score); // Use default font if no custom font
//draw_set_halign(fa_right); // Align text to the right
//draw_text(10, 50, "Total Plants: " + string(global.total_plants));
//draw_text(10, 70, "Watered Plants: " + string(global.watered_plants));
