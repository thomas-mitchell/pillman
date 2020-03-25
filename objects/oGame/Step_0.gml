  /// @description Insert description here
// You can write your code in this editor

//if(keyboard_check_pressed(vk_delete)) {
//	// Debug code
//}

switch(state) {
	case "initialising":
		// Loops over every oNode instance
		with(oNode) {
			if(instance_position(x + 4, y + 4, oWall)) {
				tempTerrain = instance_position(x + 4, y + 4, oWall);
				instance_change(oWall, true);
				passable = false;
	
				with(tempTerrain) {
					instance_destroy();	
				}
			}
		}
		
		alarm[0] = 7 * 60;
		state = "ready";
		break;
		

		
	case "ready":
		break;
		
	//case "retryRoom":
	//	instance_create_layer(0, 0, "EffectsLayer", oFadeLose);
	//	state = "waiting";
	//	break;
	
	//case "nextRoom":
	//	instance_create_layer(0, 0, "EffectsLayer", oFadeWin);
	//	state = "waiting";
	//	break;
}


