
function getAbilitiesFromFile(dsMap) {
	
var _file = file_text_open_read("abilities.txt");
	var _textLine = file_text_read_string(_file);

	while (_textLine != "")  {
		var _ability = "";
		var _tag = "";
		var _characterPos = 1;
		var _character = string_char_at(_textLine, _characterPos);

		while (_character != ",") {
			//show_debug_message(_character + " is at " + string(_characterPos));
			_ability = _ability + _character;
			_characterPos++;
			_character = string_char_at(_textLine, _characterPos);
			
			//show_debug_message(_character + " character");
			//show_debug_message(_ability + " ability");

		}

		_characterPos += 2;
		_character = string_char_at(_textLine, _characterPos);

		while (_character != ";") {
			_tag = _tag + _character;
			_characterPos++;
			_character = string_char_at(_textLine, _characterPos);
			
			//show_debug_message(_character + " character");
			//show_debug_message(_tag + " tag");

		}
		
		ds_map_add(dsMap, _ability, _tag);
		file_text_readln(_file)
		_textLine = file_text_read_string(_file);
	}
	
	file_text_close(_file);
}

function pickThree() {
	
	var _tempMap = ds_map_create();
	ds_map_copy(_tempMap, global.AvailableAbilities);
	var _abilityOptions = [];
	
	var _abilityToAdd = ds_map_find_first(_tempMap);
	
	repeat (3) {
		repeat(floor(random_range(0, ds_map_size(_tempMap) - 1))) {
			_abilityToAdd = ds_map_find_next(_tempMap, _abilityToAdd);
			
		}
		
		array_push(_abilityOptions, _abilityToAdd);
		ds_map_delete(_tempMap, _abilityToAdd)
		_abilityToAdd = ds_map_find_first(_tempMap);
	}
	
	global.AbilityOptions = _abilityOptions;
	ds_map_destroy(_tempMap);
}

function toColor(color_string) {
	switch color_string {
		case "yellow":
			return $00FFFF;
			break;
		
		case "magenta":
			return $FF00FF;
			break;
		
		case "cyan":
			return $FFFF00;
			break;
	}
	
}