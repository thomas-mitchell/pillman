/// @description Insert description here
// You can write your code in this editor

if (state == "frightened") {
	state = "dead";
	dir = "up";
	
	var destinationNode = map[10, 12];
	path_clear_points(path);
	path_add_point(path, x, y, 100);
	path_add_point(path, destinationNode.x, destinationNode.y, 100);
	path_start(path, velocity, path_action_stop, true);
	
	sprite_index = sEyesRight;
}
else if (state == "chase" || state == "scatter") {
	oPillman.dir = noone;
	oPillman.sprite_index = sPillmanDeath;
	oPillman.image_index = 0;
	alarm[1] = 40;
}