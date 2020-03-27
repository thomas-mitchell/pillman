
var ghost = argument0;


if (ghost.state == "scatter") {
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
	
	if (ghost.name == "pokey") {
		var pokeyNode = get_actor_node(ghost);
		var pillmanNode = get_actor_node(oPillman);
		
		var cutoffDistance = 8 * 8; // 8 tiles, 8 pixels per tile
		var horzDistance = abs(pokeyNode.x - pillmanNode.x);
		var vertDistance = abs(pokeyNode.y - pillmanNode.y);
		var distance = sqrt( power(horzDistance, 2) + power(vertDistance, 2) );
		
		if (distance > cutoffDistance) {
			return pillmanNode;
		}
		else {
			return ghost.scatterNode;	
		}
	}
}