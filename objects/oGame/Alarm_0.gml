/// @description Chae/scatter alarm
// You can write your code in this editor

if (ghostState == "scatter") {
	ghostState = "chase";
	alarm[0] = 20 * 60;
}
else if (ghostState == "chase") {
	ghostState = "scatter";
	alarm[0] = 7 * 60;
}

with (oGhost) {
	if (state == "scatter" || state == "chase") {
		state = other.ghostState;
	}
}