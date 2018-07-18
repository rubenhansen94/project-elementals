/// @description

var key_grid = keyboard_check_pressed(ord("G"));

if key_grid {
	if draw_grid_lines_ {
		draw_grid_lines_ = false;
	} else {
		draw_grid_lines_ = true;
	}
}

var key_toggle_fullscreen = keyboard_check_pressed(vk_numpad0);

if key_toggle_fullscreen {
	if window_get_fullscreen() {
		window_set_fullscreen(false);
	} else {
		window_set_fullscreen(true)
	}
}