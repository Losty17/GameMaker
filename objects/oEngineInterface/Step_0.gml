/// @description Insert description here
if keyboard_check_pressed(ord("W"))	t -= 1 else if keyboard_check_pressed(ord("S"))	t += 1
if t > 10 t = 0
if t < 0 t = 10

INCREASE = keyboard_check_pressed(ord("A"))
DECREASE = keyboard_check_pressed(ord("D"))
ZERO = keyboard_check_pressed(vk_f2)
switch t
{
	case 0:
		if INCREASE oBulletHandler.bulletAccel -= .01
		else if DECREASE oBulletHandler.bulletAccel += .01
		else if ZERO oBulletHandler.bulletAccel = 0
		break
		
	case 1:
		if INCREASE oBulletHandler.bulletSpeed -= .1
		else if DECREASE oBulletHandler.bulletSpeed += .1
		else if ZERO oBulletHandler.bulletSpeed = 4
		break
	
	case 2:
		if INCREASE oBulletHandler.bulletDir -= 1
		else if DECREASE oBulletHandler.bulletDir += 1
		else if ZERO oBulletHandler.bulletDir = 0
		break
		
	case 3:
		if INCREASE oBulletHandler.bulletAmount -= 1 
		else if DECREASE oBulletHandler.bulletAmount += 1
		else if ZERO oBulletHandler.bulletAmount = 1
		break
		
	case 4:
		if INCREASE oBulletHandler.bulletOffset -= .1
		else if DECREASE oBulletHandler.bulletOffset += .1
		else if ZERO oBulletHandler.bulletOffset = 0
		break
		
	case 5:
		if INCREASE oBulletHandler.bulletAiming = !oBulletHandler.bulletAiming 
		else if DECREASE oBulletHandler.bulletAiming = !oBulletHandler.bulletAiming
		else if ZERO oBulletHandler.bulletAiming = false
		break
		
	case 6:
		if INCREASE oBulletHandler.bulletDelay -= 1 
		else if DECREASE oBulletHandler.bulletDelay += 1
		else if ZERO oBulletHandler.bulletDelay = 10
		break
		
	case 7:
		if INCREASE and oBulletHandler.pointer > 0 oBulletHandler.pointer -= 1
		else if DECREASE and oBulletHandler.pointer < 1 oBulletHandler.pointer += 1
		else if ZERO oBulletHandler.pointer = 0
		break
		
	case 8:
		if INCREASE oBulletHandler.bulletSpiralSpeed -= 1 
		else if DECREASE oBulletHandler.bulletSpiralSpeed += 1
		else if ZERO oBulletHandler.bulletSpiralSpeed = 10
		break
		
	case 9:
		if INCREASE oBulletHandler.bulletRangeInit -= 5
		else if DECREASE oBulletHandler.bulletRangeInit += 5
		else if ZERO oBulletHandler.bulletRangeInit = 0
		break
		
	case 10:
		if INCREASE oBulletHandler.bulletRangeFinal -= 5
		else if DECREASE oBulletHandler.bulletRangeFinal += 5
		else if ZERO oBulletHandler.bulletRangeFinal = 360
		break
}
