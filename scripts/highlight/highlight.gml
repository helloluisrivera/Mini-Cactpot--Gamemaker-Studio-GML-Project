///@function highlight(instance, Boolean)
///@description Highlight or de-Highlight an object
///@param {real} Instance to be Highlighted
///@param {boolean} Boolean telling to Highlight or unHighlight

var is_blocker = (argument0.object_index == obj_blocker);
var _highlight = argument1;

if (_highlight) {
	if (is_blocker) {
		var blocker = argument0;
		
		blocker.image_blend = c_yellow;
		if (blocker.is_revealed) {
			blocker.image_alpha = 0.2;
			blocker.visible = true;
		}
	}
	else {
		var arrow = argument0;
		arrow.image_blend = c_yellow;
		highlight(arrow.first_blocker, true);
		highlight(arrow.second_blocker, true);
		highlight(arrow.third_blocker, true);
	}
}
else {
	if (is_blocker) {
		var blocker = argument0;
		blocker.image_blend = c_white;
		if (blocker.is_revealed) {
			blocker.visible = false;
		}
	}
	else {
		var arrow = argument0;
		arrow.image_blend = c_white;
		highlight(arrow.first_blocker, false);
		highlight(arrow.second_blocker, false);
		highlight(arrow.third_blocker, false);
	}
}