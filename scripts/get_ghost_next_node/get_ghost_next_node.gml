
var ghost = argument0;
var currentNode = get_actor_node(ghost);
var targetNode = get_ghost_target_node(ghost);

var nodeList = ds_list_create();



// Work out the nodes next to the actor
var upNode = map[currentNode.gridX, currentNode.gridY - 1];
var downNode = map[currentNode.gridX, currentNode.gridY + 1];
var leftNode = noone;
if (currentNode.gridX != 0) {
	leftNode = map[currentNode.gridX - 1, currentNode.gridY];
}
var rightNode = noone;
if (currentNode.gridX != oGame.mapWidth - 1) {
	rightNode = map[currentNode.gridX + 1, currentNode.gridY];
}

// If it's possible to move to a node add it to the list
if (ghost.dir != "down" && (upNode.passable || upNode == oGame.cageEntrance)) {
	ds_list_add(nodeList, upNode);	
}
if (ghost.dir != "up" && downNode.passable) {
	ds_list_add(nodeList, downNode);
}
if (ghost.dir != "left" && rightNode != noone && rightNode.passable) {
	ds_list_add(nodeList, rightNode);	
}
if (ghost.dir != "right" && leftNode != noone && leftNode.passable) {
	ds_list_add(nodeList, leftNode);
}

// If only one node is enterable then return it
if (ds_list_size(nodeList) == 1) {
	var nextNode = ds_list_find_value(nodeList, 0);
	ds_list_destroy(nodeList);
	return nextNode;
}

// If the ghost is frightened then choose a random node
if (ghost.state == "frightened") {
	ds_list_shuffle(nodeList);
	var nextNode = ds_list_find_value(nodeList, 0);
	ds_list_destroy(nodeList);
	return nextNode;
}

// Sort the nodes by distance to target and pick the closest
var listLength = ds_list_size(nodeList);
var priorityList = ds_priority_create();
for(var index = 0; index < listLength; index++) {
	var node = ds_list_find_value(nodeList, index);
	var deltaX = abs((node.x + 4) - (targetNode.x + 4));
	var deltaY = abs((node.y + 4) - (targetNode.y + 4));
	var priority = (deltaX * deltaX) + (deltaY * deltaY);
	ds_priority_add(priorityList, node, priority);
}

var nextNode = ds_priority_find_min(priorityList);

// Cleanup data structures
ds_priority_destroy(priorityList);
ds_list_destroy(nodeList);

return nextNode;