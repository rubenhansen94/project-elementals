/// @desc get location

if instance_exists(o_player)
{
	x = o_player.x - (o_player.x - mouse_x)/4;
	y = o_player.y - (o_player.y - mouse_y)/4;
}
