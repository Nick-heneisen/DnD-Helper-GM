if position_meeting(mouse_x, mouse_y, self) {
	image_index = 1;
	isHovered = true;

	if mouse_check_button_pressed(1) {
		if isTrigger {
			pickThree();
		}
				
		if screenPage != noone {
			changePage(screenPage);
		}
		
		if creates != noone {
			var _createdObj = instance_create_layer(0, 0, "Instances", creates);
					
			if dieType != 0 {
				var _dieType = dieType;
				with _createdObj {
					roll = floor(random_range(1, _dieType + 1));
				
				}
				
			} else {
				with _createdObj {
					roll = floor(random_range(1, 21));
					
				}
			}
		}
		
		if isAbility {
			ds_map_add(global.ActiveAbilities, text, ds_map_find_value(global.AbilitiesMap, text));
			ds_map_delete(global.AvailableAbilities, text);
			
		}
	}

} else {
	image_index = 0;
	isHovered = false;
	
}