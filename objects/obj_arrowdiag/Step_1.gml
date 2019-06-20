/// @description Find Blockers

first_blocker = ds_map_find_value(global.game_grid, "AA");
second_blocker = ds_map_find_value(global.game_grid, "BB");
third_blocker = ds_map_find_value(global.game_grid, "CC");

// With those blockers, we can get the sum of the numbers underneath them
number_sum = get_sum(first_blocker, second_blocker, third_blocker);
