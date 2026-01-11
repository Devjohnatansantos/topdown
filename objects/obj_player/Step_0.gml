
movimento();
estado();
timer--;
timer_esquiva--;

if (knockback_speed > 0) {
    hspeed = lengthdir_x(knockback_speed, knockback_dir);
    vspeed = lengthdir_y(knockback_speed, knockback_dir);
    
   
    knockback_speed *= 0.85;
	
	if (!invencivel) {
    invencivel = true;
    alarm[0] = 80;
}

}

if (vida <= 0)
{
	instance_destroy();
}





