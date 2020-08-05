/// @description Insert description here
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fMenu)

for(var t = 0; t < buttons; t++)
{
	_x = menu_x
	_y = menu_y + button_h * t
	if menuIndex == t draw_set_color(c_red) else draw_set_color(c_ltgray)
	
	draw_text(_x, _y, button[t])
}