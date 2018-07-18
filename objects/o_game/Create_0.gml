/// @description Initialize the game object

// Gloabl Variables

// Test function
// window_set_fullscreen(true); // Works!


global.one_second = game_get_speed(gamespeed_fps);
global.paused = true;
global.debug = false;

draw_grid_lines_ = false;

if global.one_second != 60 {
	game_set_speed(60, gamespeed_fps);
}

persistent = true;

// Macros
#macro cellheight 16
#macro cellwidth 16
#macro cellsize 16

//Create the Mouse Select Box
var _instance_layer = layer_get_id("Instances");
if !instance_exists(o_mouse_select_box) {
	instance_create_layer(mouse_x, mouse_y, _instance_layer, o_mouse_select_box);
}