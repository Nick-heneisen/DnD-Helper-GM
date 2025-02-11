randomize();
//
var file = file_text_open_write("abilities.imgayasfuck");
file_text_close(file);

global.font_main = font_add_sprite(s_font, 32, true, 2);
draw_set_font(global.font_main);
global.AbilitiesMap = ds_map_create();
getAbilitiesFromFile();

global.AbilityOptions = [];

//
room_goto(main);