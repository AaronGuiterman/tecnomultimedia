//Aaron Guiterman tp4 profesor Jose Luis Bugiolachi
Juego juego;
Pelota pelota;
Jugador jugador;
Pie pie;
void setup() {
  size(640, 480);
  juego= new Juego();
}
void draw() {
  background(0, 255, 255);
  juego.dibujar();
}
