/// scr_player_state_move
scr_get_inputs();

// If DASH_KEY is true, set state to dashing


// If ATTACK_KEY is true, set state to attacking


// MovemenT
// Get movement direction
var move_dir = point_direction(0, 0, move_xaxis, move_yaxis);
var len = 0;

// Mouse direction
mouse_dir = point_direction(x, y, mouse_x, mouse_y);

//
scr_get_face();

// Get the length
if (move_xaxis == 0 and move_yaxis == 0) {
	len = 0;
} else {
	len = player_speed;
	/*scr_get_face();//knows that we are moving here, now the player wont always look to the right*/
}

// Get the hspd and vspd == to len(player speed) and the dir(point_distance(0,0,xaxis,yaxis)
var hspd = lengthdir_x(len, move_dir);
var vspd = lengthdir_y(len, move_dir);

// Move using vspd
y += vspd;

// Vertical Collision Checking
if (vspd < 0) { //downwards and upwards
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	if (t1 != 0 || t2 != 0) {
		y = ((bbox_top + 16) & ~15) - s_bbox_top;
	}	
} else {
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	if (t1 != 0 || t2 != 0) {
		y = ((bbox_bottom & ~15) -1) - s_bbox_bottom;
	}
}

// Move using hspd
x += hspd;

// Horizontal Collision Checking
if (hspd < 0) { //right and left
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	if (t1 != 0 || t2 != 0) {
		x = ((bbox_left + 16) & ~15) - s_bbox_left;
	}	
} else {
	var t1 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	if (t1 != 0 || t2 != 0) {
		x = ((bbox_right & ~15) -1) - s_bbox_right;
	}
}

// Control the sprite
image_speed = len*.5;
/*
if (len == 0) image_index = 0;
*/

switch (face)//switches between the different states that face can be
{
	case RIGHT://if face == 0, show right
		sprite_index = s_player_right_unarmored;
		break;
	case LEFT://if face == 1, show left
		sprite_index = s_player_left_unarmored;
		break;
}

if (len == 0) image_index = 0;
