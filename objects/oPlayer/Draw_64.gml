/// @description Heath bar
draw_sprite(sHealthBorder,0,heathbarX,heathbarY);
draw_sprite_stretched(sHealthBar,0,heathbarX,heathbarY,(hp/max_hp)*heathbarWidth,heathbarHeight);
draw_sprite(sHealthLogo,0,heathbarX-30,heathbarY+10);

if (hp<=1)
{
	draw_sprite_stretched(sHealthOverlay,0,0,0,camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]))
}




