/// @description Insert description here
// You can write your code in this editor

event_inherited();

name = "shadow";

scatterNode = map[0, 20];

var nextNode = get_ghost_next_node(self);
path_add_point(path, x, y, 100);
path_add_point(path, nextNode.x, nextNode.y, 100);
path_start(path, 1, path_action_stop, true);

