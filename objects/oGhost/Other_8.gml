/// @description Insert description here
// You can write your code in this editor

var nextNode = get_ghost_next_node(self);

path_clear_points(path);
path_add_point(path, x, y, 100);
path_add_point(path, nextNode.x, nextNode.y, 100);
path_start(path, 100, path_action_stop, true);
