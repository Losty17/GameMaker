xAxis = KEY_RIGHT - KEY_LEFT
yAxis = KEY_DOWN - KEY_UP

var dir = point_direction(0, 0, xAxis, yAxis);

if xAxis == 0 and yAxis == 0 
{
	len = 0
} else
{
	len = 4
}

hSpd = lengthdir_x(len, dir);
vSpd = lengthdir_y(len, dir);

if place_meeting(x + hSpd, y, oCol)
{
	hSpd = 0
}
if place_meeting(x, y + vSpd, oCol)
{
	vSpd = 0
}

y += vSpd
x += hSpd