/// @description Insert description here
// You can write your code in this editor

event_inherited();

name = "bashful";
dir = "right";

scatterNodeGridX = 19;
scatterNodeGridY = 26;

spriteMap = ds_map_create();
ds_map_add(spriteMap, "up", sBashfulUp);
ds_map_add(spriteMap, "down", sBashfulDown);
ds_map_add(spriteMap, "left", sBashfulLeft);
ds_map_add(spriteMap, "right", sBashfulRight);