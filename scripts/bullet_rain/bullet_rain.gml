/// @desc bullet_rain(speed, acceleration, amount, offset, direction, aiming)
/// @param speed
/// @param acceleration
/// @param amount
/// @param offset
/// @param direction

spd		  = argument0
accel	  = argument1
amount	  = argument2
offset    = argument3
direct	  = argument4

_x = 0

dir = direct
for(var i = 0; i <= amount; i += 1)
{
	if direct == "RANDOM" dir = random_range(225, 315) 
	b = instance_create_layer(_x, 1, "Instances", oBullet)
	if direct == "AIM" dir = point_direction(b.x, b.y, oPlayerTemp.x, oPlayerTemp.y) + random_range(10, -10)
	
	b.direction = dir
	b.speed = spd
	b.bulletAccel  = accel
	b.bulletOffset = offset
	_x += room_width / amount
}