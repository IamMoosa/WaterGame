if (menu_active) {
    draw_set_color(c_white);
    draw_set_font(fnt_menu); // Use a custom menu font if available
    draw_text(room_width / 2 - 50, room_height / 2 - 80, "MAIN MENU");

    for (var i = 0; i < array_length(menu_options); i++) {
        if (i == menu_index) {
            draw_set_color(c_yellow); // Highlight the selected option
        } else {
            draw_set_color(c_white);
        }
        draw_text(room_width / 2 - 50, room_height / 2 - 30 + i * 50, menu_options[i]);
    }
}
