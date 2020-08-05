/// @desc createTransition(room)
/// @param room

tra = instance_create_layer(x, y, "Instances", oTransition)
with tra
{
	next_room = argument0
}