if position_meeting(mouse_x, mouse_y, self) {
	
	image_index = 1;
	
	if mouse_check_button_pressed(1) {
		
		switch thisButtonType {
			
			case buttonType.mainButton:
				room_goto(roomtToGoTo);
			break;
			
			case buttonType.triggerButton:
				//do shit
			break;
			
			case buttonType.backButton:
				room_goto(main);
			break;
		}
			
	}
	
} else {
	image_index = 0;
}