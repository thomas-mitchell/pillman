/// @description Reset after killing Pillman
// You can write your code in this editor

var pillmanStartNode = map[10, 20];
oPillman.x = pillmanStartNode.x;
oPillman.y = pillmanStartNode.y;
oPillman.sprite_index = sPillmanLeft;
oPillman.image_index = 0;
	
with (oGhost) {
	x = startNode.x;
	y = startNode.y;
	path_clear_points(path);
	alarm[0] = 15;
	state = "scatter";
}