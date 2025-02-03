if (menu_active) {
    // Navigate menu
    if (keyboard_check_pressed(vk_up)) {
        menu_index -= 1;
        if (menu_index < 0) menu_index = array_length(menu_options) - 1;
    }
    if (keyboard_check_pressed(vk_down)) {
        menu_index += 1;
        if (menu_index >= array_length(menu_options)) menu_index = 0;
    }

    // Confirm selection
    if (keyboard_check_pressed(vk_enter)) {
        switch (menu_index) {
            case 0: // Start Game
                room_goto_next(); // Move to the gameplay room
                break;

            case 1: // Instructions
                show_message("Instructions:\n- Use arrow keys to move.\n- Press R to refill Can.\n- Press Spacebar to water plants.\n- Water all plants to progress.\n- Don't run out of water!"); // Replace with an instruction screen if desired
                break;

            case 2: // Quit
                game_end(); // Quit the game
                break;
        }
    }
}
