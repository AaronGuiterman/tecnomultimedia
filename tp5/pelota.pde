class Pelota {
  float px, py, dx, dy;
  int tam;
  color relleno;
  PImage  pelota;
  int contador;
  Pelota() {
    tam = 38;
    px = width/2;
    py = height/2;
    pelota = loadImage("pelota.png");
    imageMode(CENTER);
  }
  void dibujar() {
    image(pelota, px, py);
    textSize(20);
    text(contador,100,100);
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
      dx= random (-2, 2);
      dy = -5;
      jueguito.play();
      contador++;
    }
  }
}
