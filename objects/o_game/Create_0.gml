/// @description Initialize the game object

// Gloabl Variables

global.one_second = game_get_speed(gamespeed_fps);
global.paused = true;

if global.one_second != 60 {
	game_set_speed(60, gamespeed_fps);
}

persistent = true;
