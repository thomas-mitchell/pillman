/// @description Insert description here
// You can write your code in this editor

nextNode = get_ghost_next_node(self);

// Update dir
var currentNode = get_actor_node(self);
if(currentNode.gridX > nextNode.gridX) {
	dir = "left";	
}
else if(currentNode.gridX < nextNode.gridX) {
	dir = "right";	
}
else if(currentNode.gridY > nextNode.gridY) {
	dir = "up";	
}
else if(currentNode.gridY < nextNode.gridY) {
	dir = "down";	
}

path_clear_points(path);
path_add_point(path, x, y, 100);
path_add_point(path, nextNode.x, nextNode.y, 100);
path_start(path, velocity, path_action_stop, true);
