
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
		}
		if (pillmanDirection == "right") {
			targetGridX += 4;
		}
		targetGridX = clamp(targetGridX, 0, oGame.mapWidth - 1);
		
		var targetGridY = pillmanNode.gridY;
		if (pillmanDirection == "up") {
			targetGridY -= 4;
		}
		if (pillmanDirection == "down") {
			targetGridY += 4;
		}
		targetGridY = clamp(targetGridY, 0, oGame.mapHeight - 1);
		
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
	
	if (ghost.name == "bashful") {
		var pillmanNode = get_actor_node(oPillman);
		var pillmanDirection = oPillman.dir;
		
		var intermediateGridX = pillmanNode.gridX;
		if (pillmanDirection == "left") {
			intermediateGridX -= 2;
		}
		if (pillmanDirection == "right") {
			intermediateGridX += 2;
		}
		intermediateGridX = clamp(intermediateGridX, 0, oGame.mapWidth - 1);
		
		var intermediateGridY = pillmanNode.gridY;
		if (pillmanDirection == "up") {
			intermediateGridY -= 2;
		}
		if (pillmanDirection == "down") {
			intermediateGridY += 2;
		}
		intermediateGridY = clamp(intermediateGridY, 0, oGame.mapHeight - 1);
		
		var intermediateNode = map[intermediateGridX, intermediateGridY];
		
		var addDirection = point_direction(oShadow.x + 4, oShadow.y + 4, intermediateNode.x + 4, intermediateNode.y + 4);
		var addDistance = point_distance(oShadow.x + 4, oShadow.y + 4, intermediateNode.x + 4, intermediateNode.y + 4);
	
		var targetPositionX = intermediateNode.x + 4 + lengthdir_x(addDistance, addDirection);
		targetPositionX = clamp(targetPositionX, 0, room_width - 1);
		
		var targetPositionY = intermediateNode.y + 4 + lengthdir_y(addDistance, addDirection);
		targetPositionY = clamp(targetPositionY, 0, room_height - 1);
		
		return collision_point(targetPositionX, targetPositionY, oNode, true, true);
	} // End bashful
}