/// @description Insert description here
// You can write your code in this editor

event_inherited();

name = "pokey";
dir = "left";

scatterNodeGridX = 1;
scatterNodeGridY = 26;

spriteMap = ds_map_create();
ds_map_add(spriteMap, "up", sPokeyUp);
ds_map_add(spriteMap, "down", sPokeyDown);
ds_map_add(spriteMap, "left", sPokeyLeft);
ds_map_add(spriteMap, "right", sPokeyRight);
