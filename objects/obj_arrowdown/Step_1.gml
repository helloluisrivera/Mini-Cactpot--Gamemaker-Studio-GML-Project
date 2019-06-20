/// @description Get Location

/*
// The Top Arrows are aligned 3 in a row
// A B C
// | | |
// V V V
*/

if (arrow_location == "Z") {
	// At most, the arrow should have a left and right neighbor
	// [left, right]
	var neighbors = [noone, noone];
	
	neighbors[0] = instance_position(x - 64, y, obj_arrowdown);
	neighbors[1] = instance_position(x + 64, y, obj_arrowdown);
	
	// If we don't have a left neighbor, we are at A
	if (neighbors[0] == noone) {
		arrow_location = "A";
	}
	// If we don't have a right neighbor, we are C
	else if (neighbors[1] == noone) {
		arrow_location = "C";
	}
	// Only B is left
	else {
		arrow_location = "B";
	}
	
	// Now, we find the blockers this arrow points to, from top to bottom
	first_blocker = ds_map_find_value(global.game_grid, "A" + arrow_location);
	second_blocker = ds_map_find_value(global.game_grid, "B" + arrow_location);
	third_blocker = ds_map_find_value(global.game_grid, "C" + arrow_location);
	
	// With those blockers, we can get the sum of the numbers underneath them
	number_sum = get_sum(first_blocker, second_blocker, third_blocker);
}
