/// @description Initialize the player object

// Call script to initialize the player object as a moving entity
initialize_movement_entity(.5, 1, o_solid)

// Test function
// window_set_fullscreen(true); // Works!

// Player Created Global Variables

global.player_health = 10;


// Player Instance Variables

direction_facing_ = dir.down;
acceleration_ = 0.25;
max_speed_ = 1;

enum player {
	move
}

enum dir {
	right,
	up,
	left,
	down
}

enum sprite_set {
	unarmed,
	clothing,
	novice_gear
	//more to come!
}

#region Sprite Set
// could put the sprite_set_ array in a script for a cleaner code later
sprite_set_[0, 0] = s_run_right_unarmed;
sprite_set_[0, 1] = s_run_up_unarmed;
sprite_set_[0, 2] = s_run_right_unarmed;
sprite_set_[0, 3] = s_run_down_unarmed;

sprite_set_[1, 0] = s_run_right_clothing;
sprite_set_[1, 1] = s_run_up_clothing;
sprite_set_[1, 2] = s_run_right_clothing;
sprite_set_[1, 3] = s_run_down_clothing;

sprite_set_[2, 0] = s_run_right_novice_gear;
sprite_set_[2, 1] = s_run_up_novice_gear;
sprite_set_[2, 2] = s_run_right_novice_gear;
sprite_set_[2, 3] = s_run_down_novice_gear;
#endregion

armor_ = sprite_set.unarmed; // temporary armor slot variable, later will probably be in a equipment array.

player_sprite_[player.move, dir.right] = sprite_set_[armor_, dir.right]
player_sprite_[player.move, dir.up] = sprite_set_[armor_, dir.up]
player_sprite_[player.move, dir.left] = sprite_set_[armor_, dir.left]
player_sprite_[player.move, dir.down] = sprite_set_[armor_, dir.down]

//player_sprite_[player.move, dir.right] = s_player_run_right_unarmed;
//player_sprite_[player.move, dir.up] = s_player_run_up_unarmed;
//player_sprite_[player.move, dir.left] = s_player_run_right_unarmed;
//player_sprite_[player.move, dir.down] = s_player_run_down_unarmed;

// debugging variable..
current_sprite_index_ = 0;

