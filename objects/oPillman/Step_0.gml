/// @description Insert description here
// You can write your code in this editor

// Debug
if(keyboard_check_pressed(vk_space)) {
	room_restart();
}

// Check for intention to turn
if(keyboard_check_pressed(vk_up)) {
	nextTurn = "up";	
}
if(keyboard_check_pressed(vk_down)) {
	nextTurn = "down";	
}
if(keyboard_check_pressed(vk_left)) {
	nextTurn = "left";	
}
if(keyboard_check_pressed(vk_right)) {
	nextTurn = "right";	
}

// Check to see if we can turn
if(nextTurn != noone) {
	var collision = noone;
	var x1 = x, x2 = x + 7, y1 = y, y2 = y + 7;
	
	switch(nextTurn) {
		case "up":
			y1 -= 1;
			y2 -= 1;
			break;
			
		case "down":
			y1 += 1;
			y2 += 1;
			break;
			
		case "left":
			x1 -= 1;
			x2 -= 1;
			break;
			
		case "right":
			x1 += 1;
			x2 += 1;
			break;
	}
	
	collision = collision_rectangle(x1, y1, x2, y2, oWall, false, false);
	if(collision == noone) {
		dir = nextTurn;
		nextTurn = noone;
	}
}


// Move and set the sprite direction
var collision = noone;
var newX = x, newY = y;
var x1 = x, y1 = y;
	
switch(dir) {
	case "up":
		newY -= velocity;
		y1 -= 1;
		direction = 90;
		sprite_index = sPillmanUp;
		break;
			
	case "down":
		newY += velocity;
		y1 += 1;
		direction = 270;
		sprite_index = sPillmanDown;
		break;
			
	case "left":
		newX -= velocity;
		x1 -= 1;
		direction = 180;
		sprite_index = sPillmanLeft;
		break;
			
	case "right":
		newX += velocity;
		x1 += 1;
		direction = 0;
		sprite_index = sPillmanRight;
		break;
}
	
// Check for collision with wall
collision = collision_rectangle(x1, y1, x1 + 7, y1 + 7, oWall, false, false);
if(collision == noone) {
	x = newX;
	y = newY;
}


// Check for going off screen
if(x < 0) {
	x = room_width - 1;	
}
if(x >= room_width) {
	x = 0;	
}


