/// @description Control Menu
//Item Ease In

menu_x += (menu_x_target - menu_x) / menu_speed;

// Keyboard Control

if(menu_control)
{
    if(keyboard_check_pressed(vk_up))
	{
	
	 menu_cursor++;
	 if(menu_cursor >= menu_items) menu_cursor=0;
	
	}
	
	   if(keyboard_check_pressed(vk_down))
	{
	
	 menu_cursor--;
	 if(menu_cursor < 0) menu_cursor=menu_items-1;
	
	}
	if(keyboard_check_pressed(vk_enter))
	{
		
	menu_x_target = gui_width+200;
	menu_committed = menu_cursor;
	ScreenShake(4,30);
	menu_control =false;
	audio_sound_gain(music, .3,1000);
	audio_sound_gain(music, 0, 1000);

	
	}
	
	var mouse_y_gui = device_mouse_y_to_gui(0);
	if(mouse_y_gui<menu_y)&& (mouse_y_gui>menu_top)
	{
		menu_cursor=(menu_y-mouse_y_gui) div (menu_itemheight*1.5)
		
		if(mouse_check_button_pressed(mb_left))
		{
		menu_x_target = gui_width+200;
	    menu_committed = menu_cursor;
	    ScreenShake(4,30);
	    menu_control =false;
		audio_sound_gain(music, .3, 1000);
		audio_sound_gain(music, 0, 1000);
		}
		
		
	}
	
	
	
	
	
}

if(menu_x>gui_width+150) && (menu_committed !=1)
{
	
   switch (menu_committed)
   {
	   
	     case 2: SlideTransition(TRANS_MODE.NEXT); break;
		 case 0: game_end(); break;
	   
   }
}

