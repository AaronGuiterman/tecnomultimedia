class Pelota {
  float px, py, dx, dy;
  int tam;
  color relleno;
  Pelota() {
    tam = 50;
    px = width/2;
    py = height/2;
    relleno = color(255);
  }
  void dibujar() {
    fill(relleno);
    ellipse(px, py, tam, tam);
  }
  void mover() {
    if (py>height-tam/2 || py<tam/2) {
      dy *= -1;
    }
    py += dy;
    if (px>width-tam/2 || px<tam/2) {
      dx *= -1;
    }
    px += dx;
  }
  void jueguito() {
    float distan = dist(px, py, (mouseX-tam/2), (mouseY+tam));
    if (distan<tam) {
      dx= random (-5, 5);
      dy = -5;
    }
  }
}
