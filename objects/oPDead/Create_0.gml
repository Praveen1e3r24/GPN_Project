hsp=3;
vsp=-4;
grv=0.2;
done=0;

deathTimer = 60;


ScreenShake(6,60);
audio_play_sound(snPlayerDeath,10,false);
game_set_speed(30,gamespeed_fps);
with(oCamera) follow=other.id;

