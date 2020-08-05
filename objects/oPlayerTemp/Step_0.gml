/// @description uwu
get_input()

if KEY_INTERACT
{
	if alarm[1] <= 0
	{
		alarm[1] = 5
	}
} 
if KEY_CANCEL
{
	if payload > 0
	{
		instance_create(x, y, specialS)
		payload -= 1
	} else if alarm[0] <= 0 alarm[0] = 150 // 5 seconds
}

switch state
{
	case state.MOVE: move_state() break
}
image_angle += 5




