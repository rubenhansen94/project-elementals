/// @description Location and Action

// Always at the players location
x = o_player.x;
y = o_player.y-8;

// Look at mouse x/y
mouse_dir = point_direction(x, y, mouse_x, mouse_y)

// Set target to face
image_angle = mouse_dir+swing;

// Get inputs
scr_get_inputs();

// Get what direction the player is facing
var facing = o_player.face;

// Set image y scale
if (facing == 1) {
	image_yscale = -1;
} else {
	image_yscale = 1
}

// Attack animation for melee weapons
if (ATTACK_KEY) {
	swing_attack = true;
}
// If attacking, swing the weapon
if(swing_attack = true) {
	if (facing == 1) {
		swing += 10;
	} else {
		swing -= 10;
	}
}
// If weapon is at +-120 degrees, reset position,
if ((swing <= -120) or (swing >= 120)) {
	swing_attack = false;
	swing = 0;
}