/// @description Player step event
window_set_cursor(cr_none); //hide cursor
// Local Variables
var _x_input = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _y_input = keyboard_check(ord("S")) - keyboard_check(ord("W"));
var _input_direction = point_direction(0, 0, _x_input, _y_input);

if _x_input == 0 && _y_input == 0 {
	image_index = 0;
	image_speed = 0;
	apply_friction_to_movement_entity();
} else {
	image_speed = max_speed_;
	if _x_input != 0 { image_xscale = _x_input; }
	get_direction_facing(_input_direction);
	add_movement_maxspeed(_input_direction, acceleration_, max_speed_);
}

#region sprite set test below
var key_one = keyboard_check(ord("R"));
var key_two = keyboard_check(ord("T"));
var key_three = keyboard_check(ord("Y"));
var key_quit = keyboard_check(ord("Q"));

if key_one { armor_ = sprite_set.unarmed; update_sprite_set(); }
if key_two { armor_ = sprite_set.clothing; update_sprite_set(); }
if key_three { armor_ = sprite_set.novice_gear; update_sprite_set(); }
#endregion

sprite_index = player_sprite_[player.move, direction_facing_]
depth = -y;

if key_quit { game_end(); }

move_movement_entity(false);