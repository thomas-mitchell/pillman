/// @description Insert description here
// You can write your code in this editor
startNode = get_actor_node(self);
scatterNode = map[scatterNodeGridX, scatterNodeGridY];

nextNode = get_ghost_next_node(self);
path_add_point(path, x, y, 100);
path_add_point(path, nextNode.x, nextNode.y, 100);
path_start(path, velocity, path_action_stop, true);