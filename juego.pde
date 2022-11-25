int estado = 0;
int contador=0;
boolean colisionPie= false;
boolean colisionPelota=true;
class Juego {
  float velNueva = -5;
  Jugador jugador;
  Pie pie;
  Pelota[] pelota = new Pelota[2];
  
  Juego() {
    for (int i=0; i<pelota.length; i++) {
    pelota[i] = new Pelota ();
    }
    jugador = new Jugador();
    pie = new Pie();
  }
  void estados() {
    if (estado==0) {
      inicio();
    }
    if (estado==1) {
      instrucciones();
    }
    if (estado==2) {
      jugar();
    }
    if (estado==3) {
      perdiste();
    }
    if (estado==4) {
      volverAjugar();
    }
  }
  void inicio() {
    estado = 0;
    background(0);
    textAlign(CENTER);
    textSize(40);
    text("Jueguitos", width-300, height/2);
    textSize(20);
    text("Pulsa ENTER para continuar", width-300, height-100);
  }
  void instrucciones() {
    estado = 1;
    background(0);
    textAlign(CENTER);
    textSize(40);
    text ("Instrucciones", width-300, height-500);
    textSize(20);
    text("Logra hacer 20 jueguitos con ambas pelotas \n Si se cae una pelota perdes \n Utiliza el click izquierdo para hacer el jueguito ", width-300, height-350);
    text("Pulsa P para iniciar", width-300, height-100);
  }
  void jugar() {
    estado = 2;
        jugador.dibujar();
    pie.dibujar();
    text(contador,100,100);
for (int i=0; i<pelota.length; i++) {
      pelota[i].dibujar();
      pelota[i].mover();
      pelota[i].jueguito();     
   }
  }
  void perdiste() {
    estado = 3;
    textAlign(CENTER); 
    textSize(60);
    fill(255);
    text("PERDISTE!", height/2, 235);
    textSize(30);
    text("Pulsa la V para vovler a jugar ", height/2, 300);
  for (int i=0; i<pelota.length; i++) {
    pelota[i].reiniciarPelota();
  }
}
  void volverAjugar() {
    estado= 4; 
    background(0);
    textAlign(CENTER); 
    textSize(30);
    fill(255);
    text("Pulsa la R para reiniciar", height/2, 235);
      for (int i=0; i<pelota.length; i++) {
    pelota[i].reiniciarPelota();
  }
  }
  void keyPressed() {
    if (estado == 0) {
      if (keyCode == ENTER) {
        estado = 1;
      }
    }
    if (estado == 1) {
      if (key == 'p' || key == 'P') {
        estado = 2;
      }
    }
    if (estado == 2) {
      if (key == 'i' || key == 'I') {
        estado = 3;
      }
    }
    if (estado == 3) {
      if (key == 'v' || key == 'V') {
        estado = 2;
      }
    } 
    if (estado == 4) {
      if (key == 'r' || key == 'R') {
        estado = 0;
      }
    }
  }
}
