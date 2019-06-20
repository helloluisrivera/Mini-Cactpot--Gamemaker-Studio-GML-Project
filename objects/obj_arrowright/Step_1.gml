/// @description Get Location

/*
// The Side Arrows are aligned 3 in a column
// A ->
// B ->
// C ->
*/

if (arrow_location == "Z") {
	// At most, the arrow should have a top and bottom neighbor
	// [top, bottom]
	var neighbors = [noone, noone];
	
	neighbors[0] = instance_position(x, y - 64, obj_arrowright);
	neighbors[1] = instance_position(x, y + 64, obj_arrowright);
	
	// If we don't have a top neighbor, we are at A
	if (neighbors[0] == noone) {
		arrow_location = "A";
	}
	// If we don't have a bottom neighbor, we are C
	else if (neighbors[1] == noone) {
		arrow_location = "C";
	}
	// Only B is left
	else {
		arrow_location = "B";
	}
	
	// Now, we find the blockers this arrow points to, from left to right.
	first_blocker = ds_map_find_value(global.game_grid, arrow_location + "A");
	second_blocker = ds_map_find_value(global.game_grid, arrow_location + "B");
	third_blocker = ds_map_find_value(global.game_grid, arrow_location + "C");
	
	// With those blockers, we can get the sum of the numbers underneath them
	number_sum = get_sum(first_blocker, second_blocker, third_blocker);
}
