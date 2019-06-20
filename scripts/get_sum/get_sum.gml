/// @function get_sum(first_blocker, second_blocker, third_blocker)
/// @description Gets the Sum of the Numbers underneath the three Blockers
/// @param {real} first_blocker
/// @param {real} second_blocker
/// @param {real} third_blocker

blocker_sum = 0;

var i;
for (i = 0; i < argument_count; i++) {
	under_number = instance_position(argument[i].x, argument[i].y, obj_number);
	blocker_sum += under_number.value;
}

return blocker_sum;