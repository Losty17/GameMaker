/// @description Insert description here

switch actually
{
	case "ROOM_ENTER":
		alpha -= .05
		if alpha <= 0 
		{
			alpha = 0
			actually = "IN_GAME"
		}
		
		break
	
	case "ROOM_OUT":
		alpha += .05
		if alpha >= 1 
		{
			alpha = 1
			room_goto(next_room)
			actually = "ROOM_ENTER"
		}
		break
		
	case "IN_GAME":
		instance_destroy(self)
		break
}