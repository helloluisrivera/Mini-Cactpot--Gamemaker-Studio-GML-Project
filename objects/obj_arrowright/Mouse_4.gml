/// @description Select Arrow & Blockers

if (global.moves_left == 0) {
	global.moves_left--;
	selected = true;
		
	with (instance_find(obj_movecounter, 0)) {
		score += other.number_sum;
	}
}

if (selected) {
	first_blocker.is_revealed = true;
	second_blocker.is_revealed = true;
	third_blocker.is_revealed = true;
	
	highlight(first_blocker, true);
	highlight(second_blocker, true);
	highlight(third_blocker, true);
	selected = false;
}
