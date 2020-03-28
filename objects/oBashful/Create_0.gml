/// @description Insert description here
// You can write your code in this editor

event_inherited();

name = "bashful";
dir = "right";

scatterNode = map[oGame.mapWidth - 2, 26];

alarm[0] = 5;

spriteMap = ds_map_create();
ds_map_add(spriteMap, "up", sBashfulUp);
ds_map_add(spriteMap, "down", sBashfulDown);
ds_map_add(spriteMap, "left", sBashfulLeft);
ds_map_add(spriteMap, "right", sBashfulRight);