/// @description Initialize o_inventory_GUI
text_border = 12;
my_items = global.player_inventory;
my_colour = c_black;
is_empty = false;
empty_message = "You have no items.";

global.item_selected = 0;
global.scrolled_amount = 0;
global.inventory_end_at = min(ds_grid_height(my_items), floor((sprite_height - (text_border * 3)) / 32));
inventory_on_screen = 0;
if (ds_grid_get(my_items, 0, 0) == 0) {
	global.inventory_end_at = 0;
	is_empty = true;
}