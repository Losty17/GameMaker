/// @desc bullet_spiral(speed, spiral_speed, acceleration, amount, offset)
/// @param speed
/// @param spiral_speed
/// @param acceleration
/// @param amount
/// @param offset
	   
spd		     = argument0
spiral_speed = argument1
accel		 = argument2
amount		 = argument3
offset		 = argument4

for(var i = 0; i < amount; i += 1)
{
	b = instance_create_layer(x, y, "Instances", oBullet)
	b.direction += bulletDir
	b.speed = spd
	b.bulletAccel  = accel
	b.bulletOffset = offset
			
	bulletDir += 360 / amount
	bulletDir += spiral_speed
}