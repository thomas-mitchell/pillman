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
	var pillmanStartNode = map[10, 20];
	oPillman.dir = noone;
	oPillman.x = pillmanStartNode.x;
	oPillman.y = pillmanStartNode.y;
	
	with (oGhost) {
		x = startNode.x;
		y = startNode.y;
		path_clear_points(path);
		alarm[0] = 15;
		state = "scatter";
	}
}