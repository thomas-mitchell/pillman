 /// @description Insert description here
// You can write your code in this editor
global.GRID_SIZE = 8;

globalvar map;

state = "initialising";

//instance_create_layer(x, y, "EffectsLayer", oFadeIn);

mapWidth = room_width / global.GRID_SIZE;
mapHeight = room_height / global.GRID_SIZE;

// Create the grid
for(xx = 0; xx < mapWidth; xx++) {
	for(yy = 0; yy < mapHeight; yy++) {
		map[xx,yy] = instance_create_layer(xx * global.GRID_SIZE, yy * global.GRID_SIZE, "NodeLayer", oNode);
		map[xx,yy].gridX = xx;
		map[xx,yy].gridY = yy;
	}
}

// Populate grid neighbours 
for(xx = 0; xx < mapWidth; xx++) {
	for(yy = 0; yy < mapHeight; yy++) {
		node = map[xx,yy];
		
		// Add left neighbour
		if(xx > 0) {
			ds_list_add(node.neighbours, map[xx - 1, yy]);
		}
		
		// Add right neighbour
		if(xx < mapWidth - 1) {
			ds_list_add(node.neighbours, map[xx + 1, yy]);
		}
		
		// Add top neighbour
		if(yy > 0) {
			ds_list_add(node.neighbours, map[xx, yy - 1]);
		}
		
		// Add bottom neighbour
		if(yy < mapHeight - 1) {
			ds_list_add(node.neighbours, map[xx, yy + 1]);
		}
		
		// Add top left neighbour
		if(xx > 0 && yy > 0) {
			ds_list_add(node.neighbours, map[xx - 1, yy - 1]);
		}
		
		// Add top right neighbour
		if(xx < mapWidth - 1 && yy > 0) {
			ds_list_add(node.neighbours, map[xx + 1, yy - 1]);
		}
		
		// Add bottom left neighbour
		if(xx > 0 && yy < mapHeight - 1) {
			ds_list_add(node.neighbours, map[xx - 1, yy + 1]);
		}
		
		// Add bottom right neighbour
		if(xx < mapWidth - 1 && yy < mapHeight - 1) {
			ds_list_add(node.neighbours, map[xx + 1, yy + 1]);
		}
	}
}




 














