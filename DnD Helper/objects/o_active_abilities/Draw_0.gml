var currentY = 0;
var active = ds_map_find_first(activeMap);

if ds_map_size(activeMap) != 0 {
	for (var i = 0; i < ds_map_size(activeMap); i++) {
		draw_set_halign(fa_right);
		var textColor = toColor(ds_map_find_value(global.ActiveAbilities, active));

		draw_text_color(x, currentY, active, textColor, textColor, textColor, textColor, 1);
	
		active = ds_map_find_next(activeMap, active);
		currentY += 25;
	}
}

