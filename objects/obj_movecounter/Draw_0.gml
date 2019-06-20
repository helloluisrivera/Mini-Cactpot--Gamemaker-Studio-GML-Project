/// @description Player Instructions

if (global.moves_left > 0) {
	draw_sprite(sprite_index, 0, x, y);
	draw_text_color(x + 15, y - 5, "Reveals Left",
					c_white, c_white, c_white, c_white, 1);
}
else if (global.moves_left == 0) {
	draw_text_color(x + 15, y - 5, "Choose Your Set",
					c_white, c_white, c_white, c_white, 1);
}

if (score != 0) && (!game_over) {
	
	score = true_score(score);
	
	string_score = string(score);
	score_length = string_length(string_score);
	score_sprite_list = ds_list_create();
	show_debug_message("Final Score: " + string(score));
	
	var i;
	for (i = 1; i <= score_length; i++) {
		c = string_char_at(string_score, i);
		ds_list_add(score_sprite_list, score_sprites[real(c)]);
	}
	
	var j = 0;
	for (i = 0; i < ds_list_size(score_sprite_list); i++) {
		draw_sprite(score_sprite_list[| i], 0, x + j, y);
		j += 20;
	}
	game_over = true;
}

if (game_over) {
	var j = 0;
	for (i = 0; i < ds_list_size(score_sprite_list); i++) {
		draw_sprite(score_sprite_list[| i], 0, x + j, y);
		j += 20;
	}
}