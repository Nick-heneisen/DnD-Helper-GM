if floor(random_range(0, 20)) == 3 {
	bg = layer_background_get_id("Background");
	layer_background_blend(bg, c_white);
	layer_background_sprite(bg, boss);
}