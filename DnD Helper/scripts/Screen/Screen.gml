
function drawPage(page) {
	
	var _pageArray = struct_get_names(page);
	for (var i = 0; i < array_length(_pageArray); i++) {
		var _button = _pageArray[i];
		var _buttonID = page[$ _button].button_id;
		
		var _newButton = instance_create_layer(page[$ _button]._x, page[$ _button]._y, "Instances", page[$ _button].object);
		with(_newButton) {
			if _buttonID != -1 {
				text = global.AbilityOptions[_buttonID];
				textColor = toColor(ds_map_find_value(global.AbilitiesMap, text));
				isAbility = true;
				
				var _text_width = string_width(text);
				x = (room_width / 2) - ((_text_width + hCusion) / 2);
				
				//show_debug_message(string(text) + " (" + string(room_width) + "/2)-(" + string(_text_width) + "+" + string(hCusion) + ")/2 = " + string(x));
			}
		}
	}
}

function changePage(page) {
	if page == noone { return; }
	
	if instance_exists(o_screen) {
	
		//remove old buttons
		var _pageArray = struct_get_names(o_screen.screenPage);
		for (var i = 0; i < array_length(_pageArray); i++) {
			var _button = _pageArray[i];
			
			if instance_exists(o_screen.screenPage[$ _button].object) {
				instance_destroy(o_screen.screenPage[$ _button].object);
				
			}
		}
		
		if instance_exists(o_damage_roll) instance_destroy(o_damage_roll);
		if instance_exists(o_attack_roll) instance_destroy(o_attack_roll);
	
		//add new ones
		drawPage(page);
		o_screen.screenPage = page;
		
	} else {
		show_debug_message("how did you even end up in this situation");
		
	}
}