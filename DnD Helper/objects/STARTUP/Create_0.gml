randomize();
//

var file = file_text_open_append("abilities.txt");
file_text_close(file);

global.font_main = font_add_sprite(s_font, 32, true, 2);
draw_set_font(global.font_main);

global.AbilitiesMap = ds_map_create();
getAbilitiesFromFile(global.AbilitiesMap);

global.AvailableAbilities = ds_map_create();
ds_map_copy(global.AvailableAbilities, global.AbilitiesMap);

global.ActiveAbilities = ds_map_create();

global.AbilityOptions = [];

//
room_goto(main);