/*Aaron Guiterman Tp 3
 https://youtu.be/ZsAj0G_qO1A*/
int cant = 10;
int x = 9;
int y = 9;
int vidas = 3;
int tam;
int pjX = 340;
int pjY = 340;
boolean cuadrados [][]= new boolean[cant][cant];
void mostrarVidas(int vidas) {
  textSize(30);
  text("Vidas: "+vidas, 100, 100);
}
void cuadradoNegro() {
  fill(0);
  rect(pjX-tam/2, pjY-tam/2, tam, tam);
}
void setup() {
  size(500, 500);
  tam = 200/cant;
  cuadrados[0][0]= true;
  cuadrados[1][0]= true;
  cuadrados[1][1]= true;
  cuadrados[2][1]= true;
  cuadrados[3][1]= true;
  cuadrados[4][1]= true;
  cuadrados[4][2]= true;
  cuadrados[5][2]= true;
  cuadrados[6][2]= true;
  cuadrados[7][2]= true;
  cuadrados[0][6]= true;
  cuadrados[1][6]= true;
  cuadrados[1][5]= true;
  cuadrados[1][4]= true;
  cuadrados[1][3]= true;
  cuadrados[2][3]= true;
  cuadrados[3][3]= true;
  cuadrados[4][3]= true;
  cuadrados[4][4]= true;
  cuadrados[4][5]= true;
  cuadrados[5][5]= true;  
  cuadrados[6][5]= true;
  cuadrados[7][5]= true;  
  cuadrados[7][6]= true;
  cuadrados[7][7]= true;
  cuadrados[8][7]= true;
  cuadrados[9][7]= true;
  cuadrados[0][8]= true;
  cuadrados[1][8]= true;
  cuadrados[2][8]= true;
  cuadrados[3][8]= true;
  cuadrados[4][8]= true;
  cuadrados[5][8]= true;
  cuadrados[6][8]= true;
  cuadrados[6][7]= true;
  cuadrados[6][6]= true;
  cuadrados[7][3]= true;
  cuadrados[9][9]= true; 
  cuadrados[8][8]= true;
  cuadrados[9][8]= true;
  cuadrados[8][9]= true;
  cuadrados[7][4]= true;
  background(0, 0, 250);
  textSize(30);
  text("Laberinto", 100, 100);
  text(".Mover jugador con las flechas\n.Hay 3 finales posibles\n.Si te quedas sin vidas perdes\n.Los finales estan a la izq.\n \nPresiona cualquier tecla \npara empezar", 50, 200);
}
void draw() {
  if (keyPressed) {     
    background(0, 0, 250);
    fill(255);
    for (int x=0; x<cant; x++) {
      for (int y=0; y<cant; y++) {
        rect(150+ x*tam, 150+y*tam, tam, tam);
      }
      circle(pjX, pjY, 10);
      mostrarVidas(vidas);
    }
  }
  if (vidas<= 0) {
    background(0, 0, 250);
    text("Perdiste, presiona r\n para reintentar.", 200, 200);
  }
  if (x==0&&y==0||x==0&&y==6||x==0&&y==8) {
    background(0, 0, 250);
    text("Ganaste, presiona r\n para volver a jugar.", 100, 100);
  }
  }
void keyPressed() {
  if (keyCode== LEFT& pjX>170) {
    pjX = pjX -tam;
    x = x - 1;
    if (cuadrados[x][y]== false) {
      cuadradoNegro();
      pjX = pjX+tam;
      vidas = vidas - 1;
      x= x +1;
    }
  }
  if (keyCode== RIGHT& pjX<340) {
    pjX = pjX+tam;
    x= x+ 1;
    if (cuadrados[x][y]== false) {
      cuadradoNegro();
      pjX = pjX-tam;
      vidas = vidas - 1;
      x= x -1;
    }
  }
  if (keyCode== UP& pjY>170) {
    pjY = pjY-tam;
    y= y-1;
    if (cuadrados[x][y]== false) {
      cuadradoNegro();
      pjY = pjY+tam;
      vidas = vidas - 1;
      y= y +1;
    }
  }
  if (keyCode== DOWN& pjY<340) {
    pjY= pjY+tam;
    y= y + 1;
    if (cuadrados[x][y]== false) {
      cuadradoNegro();
      pjY = pjY-tam;
      vidas = vidas - 1;
      y= y -1;
    }
  }
    if(key=='r'){
    x = 9;
    y = 9;
    vidas = 3;
    pjX = 340;
    pjY = 340;
    }
}
