 /// @description Insert description here
// You can write your code in this editor



velocity = 0.8;
dir = "up";
name = "";

color = c_white;
state = "scatter";
startNode = noone;
scatterNode = noone;
nextNode = noone;
lastNode = noone;

spriteMap = noone;

path = path_add();
path_set_closed(path, false);
path_set_kind(path, 0);

alarm[0] = 15;

