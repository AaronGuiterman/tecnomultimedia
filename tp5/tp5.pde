//Aaron Guiterman tp5 profesor Jose Luis Bugiolachi
import processing.sound.*;

SoundFile jueguito;
Juego juego;
Pelota pelota;
Jugador jugador;
Pie pie;
void setup() {
  size(640, 480);
  juego= new Juego();
  jueguito = new SoundFile(this, "jueguito.mp3");
}
void draw() {
  background(0, 255, 255);
  juego.dibujar();
}
