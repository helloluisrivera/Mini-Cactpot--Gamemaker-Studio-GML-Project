/// @description Allow Player Moves

if (mouse_check_button_pressed(mb_left) && (global.moves_left > 0)) {
	possible_move = instance_position(mouse_x, mouse_y, obj_blocker);
	if (possible_move != noone) && (possible_move.visible) {
		with (possible_move) {
			visible = false;
			revealed = true;
		}
		global.moves_left--;
		switch (global.moves_left) {
		case 2:
			sprite_index = spr_two;
			break;
			
		case 1:
			sprite_index = spr_one;
			break;
		}
	}
}

if (global.moves_left == 0) {
	sprite_index = noone;
}
