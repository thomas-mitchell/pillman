/// @description Insert description here
// You can write your code in this editor

with (oGhost) {
	if (state == "chase" || state == "scatter") {
		state = "frightened";
		sprite_index = sGhostFrightened;
		
		switch (dir) {
			case "up":
				dir = "down";
				break;
			case "down":
				dir = "up";
				break;
			case "left":
				dir = "right";
				break;
			case "right":
				dir = "left";
				break;
		}
		
		// Turn around
		path_clear_points(path);
		path_add_point(path, x, y, 100);
		path_add_point(path, lastNode.x, lastNode.y, 100);
		path_start(path, velocity, path_action_stop, true);
	}
}

// Turn off chase/scatter alarm
oGame.alarm[0] = -1;
oGame.alarm[1] = 7 * 60;

instance_destroy();