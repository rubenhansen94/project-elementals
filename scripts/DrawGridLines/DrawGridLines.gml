/// @description Draw Grid Lines
/// @arg Cell-Height
/// @arg Cell-Width

var ch = argument0;
var cw = argument1;
var _room_height_cells = room_height div 16;
var _room_width_cells = room_width div 16;

for (var i = 0; i<_room_height_cells; i++) {
	var xx = i*ch;
	draw_line_color(xx, 0, xx, room_height, c_white, c_white);
}

for (var i = 0; i<_room_width_cells; i++) {
	var yy = i*cw;
	draw_line_color(0, yy, room_width, yy, c_white, c_white);
}

draw_set_alpha(1);