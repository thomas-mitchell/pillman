/// @description Frightened countdown alarm
// You can write your code in this editor

with (oGhost) {
	if (state == "frightened") {
		state = "chase";
		image_index = 0;
	}
}

alarm[0] = 20 * 60;