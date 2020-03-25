
var ghost = argument0;


if (ghost.state == "scatter") {
	return ghost.scatterNode;
}

if (ghost.state == "chase") {
	if (ghost.name == "shadow") {
		return get_actor_node(oPillman);	
	}
}