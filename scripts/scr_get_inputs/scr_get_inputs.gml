//scr_get_inputs

#region //keyboard inputs
	UP_KEY = keyboard_check(ord("W"));
	LEFT_KEY = keyboard_check(ord("A"));
	DOWN_KEY = keyboard_check(ord("S"));
	RIGHT_KEY = keyboard_check(ord("D"));
	DASH_KEY = keyboard_check_pressed(vk_shift)
	ATTACK_KEY = device_mouse_check_button(0, mb_left)
	USE1_KEY = keyboard_check(ord("F"));
	USE2_KEY = keyboard_check(vk_space);
	MENU_KEY = keyboard_check_pressed(vk_tab);
	OPTIONS_KEY = keyboard_check_pressed(vk_escape);
#endregion

//get the axis
move_xaxis = (RIGHT_KEY - LEFT_KEY);
move_yaxis = (DOWN_KEY - UP_KEY);

//Controller support coming soon!
