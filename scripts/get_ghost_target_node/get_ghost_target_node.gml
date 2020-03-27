
var ghost = argument0;


if (ghost.state == "scatter") {
	// Debug code
	if (ghost.name == "speedy") {
		clear_nodes();
		ghost.scatterNode.color = c_red;
	}
	
	return ghost.scatterNode;
}

if (ghost.state == "chase") {
	if (ghost.name == "shadow") {
		return get_actor_node(oPillman);	
	}
	if (ghost.name == "speedy") {
		//clear_nodes();
		var pillmanNode = get_actor_node(oPillman);
		var pillmanDirection = oPillman.dir;
		
		var targetGridX = pillmanNode.gridX;
		if (pillmanDirection == "left") {
			targetGridX -= 4;
			if(targetGridX < 0) {
				targetGridX = 0;	
			}
		}
		if (pillmanDirection == "right") {
			targetGridX += 4;
			if(targetGridX >= oGame.mapWidth) {
				targetGridX = oGame.mapWidth - 1;	
			}
		}
		
		var targetGridY = pillmanNode.gridY;
		if (pillmanDirection == "up") {
			targetGridY -= 4;
			if(targetGridY < 0) {
				targetGridY = 0;	
			}
		}
		if (pillmanDirection == "down") {
			targetGridY += 4;
			if(targetGridY >= oGame.mapHeight) {
				targetGridY = oGame.mapHeight - 1;	
			}
		}
		
		//map[targetGridX, targetGridY].color = c_red;
		return map[targetGridX, targetGridY];
	} // End Speedy
}