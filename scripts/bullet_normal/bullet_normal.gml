/// @desc createBullet(speed, acceleration, amount, offset, range, aiming)
/// @param speed
/// @param acceleration
/// @param amount
/// @param offset
/// @param range
/// @param aiming

spd    = argument0
accel  = argument1
amount = argument2
offset = argument3
range  = argument4
aiming = argument5
	   
if amount == 0 exit
if range[0] <= range[1] dir = (range[1] - range[0]) / amount
else dir = (range[0] - range[1]) / amount
for (var i = range[0]; i <= range[1]; i += dir)
{
	b = instance_create_layer(x, y, "Instances", oBullet)
	b.direction = i
	
	b.speed = spd
	b.bulletAccel  = accel
	b.bulletOffset = offset	
}