class Juego {
  Pelota pelota;
  Jugador jugador;
  Pie pie;
  Juego() {
    pelota = new Pelota();
    jugador = new Jugador();
    pie = new Pie();
  }
  void dibujar() {
    pelota.dibujar();
    pelota.mover();
    jugador.dibujar();
    pie.dibujar();
    pelota.jueguito();
  }
}
