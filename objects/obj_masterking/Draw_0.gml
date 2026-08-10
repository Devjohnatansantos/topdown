
draw_self();

if (atacando && quadrado_visivel) {

    draw_set_color(c_red);
    draw_set_alpha(0.35);

    draw_rectangle(
        x - tamanho_ataque / 2,
        y - tamanho_ataque / 2,
        x + tamanho_ataque / 2,
        y + tamanho_ataque / 2,
        false
    );

    draw_set_alpha(1);
    draw_set_color(c_white);
}