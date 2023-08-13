/// @description Heath bar
draw_sprite(sHealthBorder,0,heathbarX,heathbarY);
draw_sprite_stretched(sHealthBar,0,heathbarX,heathbarY,(hp/max_hp)*heathbarWidth,heathbarHeight);
draw_sprite(sHealthLogo,0,heathbarX-30,heathbarY+10);

if (hp<=1)
{
	draw_sprite_stretched(sHealthOverlay,0,0,0,camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]))
}
if (hp<=2)
{
	draw_sprite_stretched_ext(sHealthOverlay,0,0,0,camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]),c_white,0.5)
}

if (room == Room1)
{
	objText = "Objective: Go to the city's labatory";
}

cursor_sprite = sCursor;
window_set_cursor(cr_none);

draw_set_font(fObjective)
draw_set_halign(fa_left)
draw_set_color(c_black);
draw_text(objX-2,objY,objText);
draw_text(objX+2,objY,objText);
draw_text(objX,objY+2,objText);
draw_text(objX,objY-2,objText);
draw_set_color(c_white)
draw_text(objX,objY,objText);







