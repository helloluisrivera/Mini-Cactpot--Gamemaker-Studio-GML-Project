/// pick_number
/// @description Randomly assign a unique number sprite and correct value

with instance_find(obj_game, 0) {
	randomize();
	
	// Set the picked_sprite to zero so we know we need to pick a new one.
	picked_sprite = spr_zero;
	while (picked_sprite == spr_zero) {
		// Pick from the list of available numbers
		random_index = irandom_range(0, array_length_1d(available_numbers) - 1);
		// Store the choice
		picked_sprite = available_numbers[random_index];
	}
	
	// Remove the choice from the available numbers list.
	available_numbers[random_index] = spr_zero;
	
	// Return the picked sprite
	return [picked_sprite, random_index + 1];
}