/// @description Player step event

// Local Variables
var _x_input = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _y_input = keyboard_check(ord("S")) - keyboard_check(ord("W"));
var _input_direction = point_direction(0, 0, _x_input, _y_input);
direction_facing_ = round(_input_direction/90);
if direction_facing_ == 4 { direction_facing_ = 0; }

#region sprite set test below
var key_one = keyboard_check(ord("R"))
var key_two = keyboard_check(ord("T"))
var key_three = keyboard_check(ord("Y"))

if key_one { armor_ = sprite_set.unarmed; update_sprite_set(); }
if key_two { armor_ = sprite_set.clothing; update_sprite_set(); }
if key_three { armor_ = sprite_set.novice_gear; update_sprite_set(); }
#endregion

// Simple movement system

image_speed = 0;
if _x_input != 0 && !place_meeting(x+speed_*_x_input, y, o_solid) {
	x += speed_*_x_input;
	image_speed = speed_;
}

if _y_input != 0 && !place_meeting(x, y+speed_*_y_input, o_solid) {
	y += speed_*_y_input;
	image_speed = speed_;
	if _y_input >= 0 { image_xscale = -1 }
	else if _y_input <= 0 { image_xscale = 1 }
	//if _y_input >= 0 {
	//	direction_facing_ = dir.down;
	//} else if _y_input <= 0 {
	//	direction_facing_ = dir.up;
	//}
}

sprite_index = player_sprite_[player.move, direction_facing_]
depth = -y;

// debugging variable..
current_sprite_index_ = sprite_index;