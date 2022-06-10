//https://youtu.be/DDdppv-fehU
int cant = 10;
int tam;
float   colorX = map(mouseX, 0, width, 0, 255);
float   colorY = map(mouseY, 0, height, 0, 255);
void setup() {
  size(500, 500);
}
void draw() {
  background(0);
  tam = width/cant;
  for (int x=0; x<cant; x++) {
    for (int y=0; y<cant; y++) {      
      if ((x+y)%2==0) {
        coloresPar(colorX, colorY);
      } else {
        coloresImpar(colorX, colorY);
      }
      rect(x*tam, y*tam, tam, tam);
    }
  }
}
void keyPressed() {
  cant = 10;
}
void mousePressed() {
  cant --;
}
void coloresPar(float colorX, float colorY) {
  colorX = map(mouseX, 0, width, 0, 255);
  colorY = map(mouseY, 0, height, 0, 255);
  fill(colorX, colorY, 150);
}
void coloresImpar(float colorX, float colorY) {
  colorX = map(mouseX, 0, width, 0, 255);
  colorY = map(mouseY, 0, height, 0, 255);
  fill(colorY, colorX, 150);
}
