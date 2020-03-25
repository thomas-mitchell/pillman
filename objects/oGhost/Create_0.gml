 /// @description Insert description here
// You can write your code in this editor



velocity = 1;
dir = "up";
name = "";

color = c_white;
state = "scatter";
scatterNode = noone;
nextNode = noone;

//path = ds_list_create();
path = path_add();
path_set_closed(path, false);
path_set_kind(path, 0);

