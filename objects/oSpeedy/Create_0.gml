/// @description Insert description here
// You can write your code in this editor

event_inherited();

name = "speedy";
dir = "up";

scatterNodeGridX = 1;
scatterNodeGridY = 0;

spriteMap = ds_map_create();
ds_map_add(spriteMap, "up", sSpeedyUp);
ds_map_add(spriteMap, "down", sSpeedyDown);
ds_map_add(spriteMap, "left", sSpeedyLeft);
ds_map_add(spriteMap, "right", sSpeedyRight);