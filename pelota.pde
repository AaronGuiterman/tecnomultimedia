class Pelota {
  float px, py, dx, dy;
  int tam;
  PImage  pelota;
  Pelota() {
    tam = 40;
    px = width/2;
    py = height/2;
    pelota = loadImage("pelota.png");
    imageMode(CENTER);
  }
  void dibujar() {
    image(pelota, px, py);
    textSize(20);
  }
  void mover() {
    juego.colisionPelota = true;
    if (py>height-tam/2) {
      juego.estado = 3;
      juego.contador = 0;
    } 
    if (py<tam/2) {
      dy *= -1;
      juego.colisionPelota = false;
    }
    py += dy;
    if (px>width-tam/2 || px<tam/2) {
      dx *= -1;
      juego.colisionPelota = false;
    }
    px += dx;
  }
  void jueguito() {
    float distan = dist(px, py, (mouseX-tam/2), (mouseY+tam));
    if (distan<tam && juego.colisionPie == true && juego.colisionPelota == true) {
      dx= random (-2, 2);
      dy = random(-5-2);
      jueguito.play();
      juego.contador++;
      juego.colisionPelota = false;
      if (juego.contador>= 20) {
        juego.estado = 4;
        juego.contador = 0;
      }
    }
  }
  void reiniciarPelota() {
    px = width/2;
    py = height/2;
    dx = 0;
    dy = 0;
    juego.colisionPelota = true;
  }
}
