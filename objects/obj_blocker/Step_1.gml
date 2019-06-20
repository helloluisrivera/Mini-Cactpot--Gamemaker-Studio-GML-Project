/// @description Determine Location

if (blocker_location == "ZZ") {
	/*
	The Game Grid looks like this
	[(AA),(AB),(AC)]
	[(BA),(BB),(BC)]
	[(CA),(CB),(CC)]
	Now, we get the blockers to find out which of the letter pairings they are
	*/

	// First, let's find out who our neighbors are.
	// [North, East, South, West]
	var neighbors = [noone, noone, noone, noone];
	
	// All of our Neighbors are 64px away from us.
	neighbors[0] = instance_position(x, y - 64, obj_blocker);
	neighbors[1] = instance_position(x + 64, y, obj_blocker);
	neighbors[2] = instance_position(x, y + 64, obj_blocker);
	neighbors[3] = instance_position(x - 64, y, obj_blocker);
	
	// If we don't have a North Neighbor, we are in the top row
	if (neighbors[0] == noone) {
		// If we don't have a West Neighbor, we are AA
		if (neighbors[3] == noone) {
			blocker_location = "AA";
		}
		// If we don't have an East Neighbor, we are AC
		else if (neighbors[1] == noone) {
			blocker_location = "AC";
		}
		// Only leaves AB, in the middle
		else {
			blocker_location = "AB";
		}
	}
	// If we don't have a South Neighbor, we are in the bottom row
	else if (neighbors[2] == noone) {
		// If we don't have a West Neighbor, we are CA
		if (neighbors[3] == noone) {
			blocker_location = "CA";
		}
		// If we don't have an East Neighbor, we are CC
		else if (neighbors[1] == noone) {
			blocker_location = "CC";
		}
		// Only leaves CB, the middle
		else {
			blocker_location = "CB";
		}
	}
	// We must be in the middle row
	else {
		// If we don't have a West Neighbor, we are BA
		if (neighbors[3] == noone) {
			blocker_location = "BA";
		}
		// If we don't have an East Neighbor, we are BC
		else if (neighbors[1] == noone) {
			blocker_location = "BC";
		}
		// Only leaves BB, the middle
		else {
			blocker_location = "BB";
		}
	}
	
	// Now, we have the location and need to add it to the game_grid
	ds_map_add(global.game_grid, blocker_location, self);
}

