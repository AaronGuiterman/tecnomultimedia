//Aaron Guiterman tp5 profesor Jose Luis Bugiolachi
// https://youtu.be/ZrtdkkiJ3xg
import processing.sound.*;

SoundFile jueguito;
Juego juego;
void setup() {
  size(640, 480);
  juego= new Juego();
  jueguito = new SoundFile(this, "jueguito.mp3");
}
void draw() {
  background(0, 255, 255);
  juego.estados();
  juego.keyPressed();
}
