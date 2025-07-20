if (riddle_active) {
     input_text = keyboard_string;
    global.dialog_active = true;
    /*
    for (var i = ord("A"); i <= ord("Z"); i++) {
        if (keyboard_check_pressed(i)) {
            input_text += string_lower(chr(i));
        }
    }

    // Numbers 0-9
    for (var j = ord("0"); j <= ord("9"); j++) {
        if (keyboard_check_pressed(j)) {
            input_text += chr(j);
        }
    }
    
    if (keyboard_check_pressed(ord("Å"))) input_text += "å";
    if (keyboard_check_pressed(ord("Ä"))) input_text += "ä";
    if (keyboard_check_pressed(ord("Ö"))) input_text += "ö";

    // Space
    if (keyboard_check_pressed(vk_space)) {
        input_text += " ";
    }

    // Backspace
    if (keyboard_check_pressed(vk_backspace)) {
        if (string_length(input_text) > 0) {
            input_text = string_copy(input_text, 1, string_length(input_text) - 1);
        }
    }

    // Confirm with Enter
    if (keyboard_check_pressed(vk_enter)) {
        if (string_lower(input_text) == string_lower(correct_answer)) {
            create_dialog(global.room0_opening_dialog);
            riddle_active = false;
        } else {
            show_message("Inkorrekt svar, försök igen.");
            input_text = "";
        }
    }
    */
var _dx = 0;
	var _dy = gui_h * 0.7;
	var _boxw = gui_w;
	var _boxh = gui_h - _dy;
	
	draw_set_font(font_dialog);
	
	draw_sprite_stretched(spr_box, 0, _dx, _dy, _boxw, _boxh);
	
	_dx += 16;
	_dy += 16;
	
	draw_set_color(c_white);
    draw_text(_dx, _dy, "uhv wlooednd wloo gbu doow ecumdgh. iduru oxudu sa vdqnw kdqv edfndu.");
    draw_text(_dx, _dy + 40, "Skriv ditt svar här>" + input_text + "|");
	
	_dy += 40; 
    }