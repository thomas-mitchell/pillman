
var actor = argument0;
var actorX = actor.x + 4;
var actorY = actor.y + 4;

var node = collision_point(actorX, actorY, oNode, true, true);

return node;
