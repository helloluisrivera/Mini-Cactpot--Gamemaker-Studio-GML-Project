/// @description Reveal First Number

if (!first_revealed) {
	randomize();
	
	var random_index = irandom_range(0, instance_number(obj_blocker) - 1);
	var random_blocker = instance_find(obj_blocker, random_index);
	
	random_blocker.visible = false;
	random_blocker.is_revealed = true;
	
	first_revealed = true;
}
