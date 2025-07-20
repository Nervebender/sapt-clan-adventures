    
    if (!room0_intro_dialog) and (room == Room0) {
        create_dialog(global.room0_opening_dialog)
		
		room0_intro_dialog = true;
    }
    
    if (global.dialog_timer > 0) and (room == Room0) and room0_intro_dialog = true and (!room0_intro_dialog_post_throw){
    global.dialog_timer--;
    if (global.dialog_timer == 0) {
        create_dialog(global.room0_opening_dialog_post_throw); 
        
        room0_intro_dialog_post_throw = true;
    }
    }
    
    if (room0_intro_dialog_post_throw and !room0_intro_dialog_done) {
        if (!global.dialog_active) {
            scr_fade_to_room(Room1);
            room0_intro_dialog_done = true;
        }
    }

    if (!room1_intro_dialog) and (room == Room1) {
		create_dialog(global.room1_dialog_elon)
		
		room1_intro_dialog = true;
	}

 