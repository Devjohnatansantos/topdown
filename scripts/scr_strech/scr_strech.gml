function inicia_efeito_mola()
{
	xscale = 1;
	yscale = 1;
}

function _mola(_xscale, _yscale)
{
	xscale = _xscale;
	yscale = _yscale;
}


function _retornar(_qtd, _tmp)
{
	xscale = lerp(xscale, _qtd, _tmp)
	yscale = lerp(yscale, _qtd, _tmp)
	
	
}

function _desenha_mola()
{
	draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, image_angle, image_blend, image_alpha)
}

