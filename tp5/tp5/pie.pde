class Pie extends Pelota {
  float ang;
  Pie() {
    ang = radians(35);
    rectMode(CENTER);
  }
  void dibujar() {
    fill(0);
    if (mousePressed) {
      colision = true;
      push();
      translate(mouseX-tam/2, mouseY+tam);
      rotate(ang);
      rect(-10, -3, tam, tam/2);
      pop();
    } else {
      rect((mouseX-tam/2), (mouseY+tam), tam, tam/2);
      colision = false;
    }
    println(colision);
  }
}
