/// @description Insert description here
// You can write your code in this editor

var currentNode = get_actor_node(self);
lastNode = currentNode;

// If the ghost is about to go through the tunnel then update position
// before trying to calculate next node
if (currentNode == oGame.tunnelEndLeft && dir == "left") {
	x = oGame.tunnelEndRight.x;
	y = oGame.tunnelEndRight.y;
	currentNode = oGame.tunnelEndRight;
}
else if (currentNode == oGame.tunnelEndRight && dir == "right") {
	x = oGame.tunnelEndLeft.x;
	y = oGame.tunnelEndLeft.y;
	currentNode = oGame.tunnelEndLeft;
}

nextNode = get_ghost_next_node(self);

// Update dir
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

if (name == "bashful") {
	var dummy = 3;	
}

if (spriteMap && state != "frightened") {
	sprite_index = ds_map_find_value(spriteMap, dir);	
}

path_clear_points(path);
path_add_point(path, x, y, 100);
path_add_point(path, nextNode.x, nextNode.y, 100);
path_start(path, velocity, path_action_stop, true);
