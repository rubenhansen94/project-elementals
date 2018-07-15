/// @description 
// Get keyboard/controller inputs
scr_get_inputs();

//Get Viewport_Height


// Check if MENY_KEY is pressed
if (MENU_KEY) {
	if (!instance_exists(o_inventory_GUI)) {
		inventory_display =  instance_create_depth(0, 0, depth -1, o_inventory_GUI);
		with(inventory_display) {
			x = sprite_get_xoffset(sprite_index);
			y = room_height - sprite_get_yoffset(sprite_index);
		}
	}
}

