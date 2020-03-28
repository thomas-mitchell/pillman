/// @description Insert description here
// You can write your code in this editor

event_inherited();

name = "shadow";
dir = "left";

scatterNodeGridX = 19;
scatterNodeGridY = 0;

spriteMap = ds_map_create();
ds_map_add(spriteMap, "up", sShadowUp);
ds_map_add(spriteMap, "down", sShadowDown);
ds_map_add(spriteMap, "left", sShadowLeft);
ds_map_add(spriteMap, "right", sShadowRight);

