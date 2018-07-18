///@description DrawTileTest
///@arg x
///@arg y
///@arg layer

var cs = cellsize; //Macro for 16, used for the grid.
var xx = argument0 div cs; //This finds the coordinates on the grid.
var yy = argument1 div cs; //This finds the coordinates on the grid.
var layer_id = layer_get_id(argument2); //So that this script can be used for multiple tilemaps.
var map_id = layer_tilemap_get_id(layer_id);

var mouse_one = mouse_check_button_pressed(mb_left); // setting up LMB
var mouse_two = mouse_check_button_pressed(mb_right); // setting up RMB

xx = xx * cs; // Getting the XX and YY value back at room pixel values
yy = yy * cs;

var mx = tilemap_get_cell_x_at_pixel(map_id, xx, yy); // this gets the tilemap x axis cell underneath at the current X and Y coordinate. 
var my = tilemap_get_cell_y_at_pixel(map_id, xx, yy); // this gets the tilemap y axis cell underneath at the current X and Y coordinate. 

var data = tilemap_get(map_id, mx, my); //Gets the tilemap data, by my understanding this is the position of the tile in the room.

var tile_1 = tile_set_index(data, 3); //Gets the tile index from the tile set/sprite assosiated with this tile layer. The first square that always should be black is 0.
var tile_2 = tile_set_index(data, 1);

if mouse_one {
	tilemap_set(map_id, tile_1, mx, my); //Sets the tilemap at a specific location to selected tile in room.
	//tilemap_set_at_pixel(map_id, tile_1, xx, yy);
	show_debug_message("Pressed mb_left..");
}
if mouse_two {
	tilemap_set(map_id, tile_2, mx, my);
	//tilemap_set_at_pixel(map_id, tile_2, xx, yy);
	show_debug_message("Pressed mb_right..");
}