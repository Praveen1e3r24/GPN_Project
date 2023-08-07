/// @description Insert description here
// You can write your code in this editor

var collect = false;
with(other)
{
	if (hp<max_hp)
	{
		collect = true;
		hp++;
	}
}
if (collect==true)
{
	instance_destroy();
}



