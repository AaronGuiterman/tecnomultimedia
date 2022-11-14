class Jugador {
  int tam;
  Jugador() {
    tam=40;
  }
  void dibujar() {
    rectMode(CENTER);
    fill(255, 0, 0);
    rect(mouseX, mouseY, tam, tam*2);
    fill(247, 220, 199);
    circle(mouseX, (mouseY-(tam +tam/2)), tam);
  }
}
