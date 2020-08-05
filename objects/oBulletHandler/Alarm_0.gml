/// @description Fire bullets in da ho
bulletType = bulletTypes[pointer]

switch bulletType
{
	case "NORMAL":
		if bulletAmount == 0 break
		bulletDir = (bulletRangeFinal - bulletRangeInit) / bulletAmount
		for (var i = bulletRangeInit; i <= bulletRangeFinal; i += bulletDir)
		{
			b = instance_create_layer(x, y, "Instances", oBullet)	
			if bulletAiming b.direction = point_direction(x, y, oPlayerTemp.x, oPlayerTemp.y) 
			else b.direction = i
	
			b.speed = bulletSpeed
			b.bulletOffset = bulletOffset
			b.bulletAccel = bulletAccel
		}
		break

	case "SPIRAL":
		for(var i = 0; i < bulletAmount; i += 1)
		{
			b = instance_create_layer(x, y, "Instances", oBullet)
			b.direction += bulletDir
			b.speed = bulletSpeed
			bulletDir += 360 / bulletAmount
			bulletDir += bulletSpiralSpeed
			
			b.bulletOffset = bulletOffset
			b.bulletAccel = bulletAccel
		}
}