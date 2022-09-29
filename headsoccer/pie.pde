class Pie extends Jugador {
  Pie() {
  }
  void dibujar() {
    fill(0);
    rect((mouseX-tam/2), (mouseY+tam), tam, tam/2);
  }
}
