/// @description GUI/Vars/Menu setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width + 200;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25 ;// lower is faster

menu_font = fMenu;
menu_itemheight = font_get_size(fMenu);
menu_committed=-1;
menu_control = true;

menu[2]="New Game";
menu[1]="Continue"
menu[0]="Quit";

menu_cursor =2;

titleX = camera_get_view_width(view_camera[0])/2;
titleY = (camera_get_view_height(view_camera[0])/2)-100;
titleTxt = "NeuroScape";

menu_items = array_length(menu);
menu_top=menu_y-((menu_itemheight*1.5)*menu_items);

music = audio_play_sound(snMenuMusic, 10, true);
audio_sound_gain(music, 0, 0);
audio_sound_gain(music, 1, 5000);

