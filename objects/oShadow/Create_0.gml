/// @description Insert description here
// You can write your code in this editor

event_inherited();

name = "shadow";

scatterNode = map[0, 20];

var targetNode = get_ghost_target_node(self);
path_add_point(path, targetNode.x, targetNode.y, 100);
path_start(path, 100, path_action_stop, true);

