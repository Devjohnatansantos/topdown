
movimento();
estado();
timer--;
timer_esquiva--;
timer_inv--;

if (knockback_speed > 0 && distance_to_object(obj_parede) > distance) {
	
	
	
    hspeed = lengthdir_x(knockback_speed, knockback_dir);
    vspeed = lengthdir_y(knockback_speed, knockback_dir);
    
   
    knockback_speed *= 0.85;
	
	if (invencivel == false) {
    invencivel = true;
	tomar_dano = false;
	
	
}
}



if (vida <= 0)
{
	instance_destroy();
}

if (timer_inv > 0) {
    

    if ((timer_inv div 10) mod 2 == 0) {
        image_alpha = 0.2; 
    } else {
        image_alpha = 1;  
    }

} else {
    image_alpha = 1; 
}




