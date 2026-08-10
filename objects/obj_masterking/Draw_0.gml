
draw_self();

if (atacando && quadrado_visivel) {

    var tamanho = 150;

    draw_set_alpha(0.5);
    draw_set_color(c_red);

    draw_rectangle(
        x - tamanho / 2,
        y - tamanho / 2,
        x + tamanho / 2,
        y + tamanho / 2,
        false
    );

    draw_set_alpha(1);
    draw_set_color(c_white);
}