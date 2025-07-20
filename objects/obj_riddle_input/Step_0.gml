if (riddle_active) {
    
    // Handle backspace
    if (keyboard_check_pressed(vk_backspace)) {
        input_text = string_copy(input_text, 1, string_length(input_text) - 1);
    }
    
    // Confirm input with Enter
    if (keyboard_check_pressed(vk_enter)) {
        if (string_lower(input_text) == string_lower(correct_answer)) {
            global.dialog_active = false;
            scr_fade_to_room(Room4)
            riddle_active = false;
        } else {
            show_message("Inkorrekt svar, försök igen. (hur översätts chiffret?)");
            input_text = "";
        }
    }
}