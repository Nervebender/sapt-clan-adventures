input_text = "";
correct_answer = "res tillbaka till där allt började. faror lurar på sankt hans backar."; 
riddle_active = true;


	messages = [];
	current_message = -1;
	current_char = 0;
	draw_message = "";
	
	char_speed = 0.5;
	input_key = vk_space;
	
	
	gui_w = display_get_gui_width();
	gui_h = display_get_gui_height();