/// @description Insert description here
things = [
		  oBulletHandler.bulletAccel,
		  oBulletHandler.bulletSpeed,
		  oBulletHandler.bulletDir,
		  oBulletHandler.bulletAmount,
		  oBulletHandler.bulletOffset,
		  oBulletHandler.bulletAiming,
		  oBulletHandler.bulletDelay,
		  oBulletHandler.bulletTypes[oBulletHandler.pointer],
		  oBulletHandler.bulletSpiralSpeed,
		  oBulletHandler.bulletRangeInit,
		  oBulletHandler.bulletRangeFinal
		  ]

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fArial)

for(var i = 0; i < array_length_1d(things); i += 1)
{
	if i == t draw_set_color(c_yellow) else draw_set_color(c_white)
	draw_text(_x + 5, _y + 20 * i, "- " + name_things[i] + " = " + string(things[i]));
}

stats_var = [
			fps_real,
			fps,
			instance_number(oBullet),
			oPlayerTemp.x,
			oPlayerTemp.y,
			mouse_x,
			mouse_y
			]
			

draw_set_halign(fa_left)
draw_set_color(c_white)
for (var i = 0; i < array_length_1d(stats_var); i += 1)
{
	draw_text(_x + 5, r_y - 20 - (20 * i), "- " + stats[i] + " = " + string(stats_var[i]))
}