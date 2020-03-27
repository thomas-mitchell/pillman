/// @description Insert description here
// You can write your code in this editor

event_inherited();

name = "speedy";
dir = "up";

scatterNode = map[1, 0];

alarm[0] = 5;

spriteMap = ds_map_create();
ds_map_add(spriteMap, "up", sSpeedyUp);
ds_map_add(spriteMap, "down", sSpeedyDown);
ds_map_add(spriteMap, "left", sSpeedyLeft);
ds_map_add(spriteMap, "right", sSpeedyRight);