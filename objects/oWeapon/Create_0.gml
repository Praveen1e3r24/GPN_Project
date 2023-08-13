//unarmed
weapons[0] =ds_map_create();
ds_map_add(weapons[0],"sprite",-1);
ds_map_add(weapons[0],"recoil",0);
ds_map_add(weapons[0],"recoil_push",0);
ds_map_add(weapons[0],"damage",0);
ds_map_add(weapons[0],"projectile",-1);
ds_map_add(weapons[0],"startup",0);
ds_map_add(weapons[0],"length",0);
ds_map_add(weapons[0],"cooldown",0);
ds_map_add(weapons[0],"bulletspeed",0);
ds_map_add(weapons[0],"automatic",false);



//AR
weapons[1] =ds_map_create();
ds_map_add(weapons[1],"sprite",sGun_ar);
ds_map_add(weapons[1],"recoil",3);
ds_map_add(weapons[1],"recoil_push",0);
ds_map_add(weapons[1],"damage",1);
ds_map_add(weapons[1],"projectile",oBullet);
ds_map_add(weapons[1],"startup",0);
ds_map_add(weapons[1],"length",24);
ds_map_add(weapons[1],"cooldown",12);
ds_map_add(weapons[1],"bulletspeed",10);
ds_map_add(weapons[1],"automatic",true);


                   
weapons[2] =ds_map_create();
ds_map_add(weapons[2],"sprite",sGun_ShotGun);
ds_map_add(weapons[2],"recoil",3);
ds_map_add(weapons[2],"recoil_push",5);
ds_map_add(weapons[2],"damage",3);
ds_map_add(weapons[2],"projectile",oShotGunBullet);
ds_map_add(weapons[2],"startup",0);
ds_map_add(weapons[2],"length",24);
ds_map_add(weapons[2],"cooldown",5);
ds_map_add(weapons[2],"bulletspeed",7);
ds_map_add(weapons[2],"automatic",false);


weapon=0;
ammo[array_length_1d(weapons)-1]=-1;


ChangeWeapon(0);

current_cd=0;
current_delay= -1;
current_recoil=0;







 

