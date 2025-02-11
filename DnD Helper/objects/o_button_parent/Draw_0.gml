
if thisButtonType == buttonType.blank {
	
	var _text_width = string_width(text);
	var _text_x = x + (hCusion / 2);
	var _text_y = y - 4;
	
	image_xscale = (_text_width + hCusion) / 32;
	
	draw_self();
	
	if !isHovered { draw_text_color(_text_x, _text_y, text, textColor, textColor, textColor, textColor, 1); }
			 else { draw_text_color(_text_x, _text_y + 4, text, textColor, textColor, textColor, textColor, 1); }
	
	
} else {
	
	draw_self();
}