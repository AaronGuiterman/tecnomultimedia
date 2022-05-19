//Aaron Guiterman tp1 profesor Jose Luis Bugiolachi
PImage fondo1, fondo2, fondo3, fondo4, fondo5 ;
PFont fuente, fuente2;
int subir;
float aumentar;
boolean botonR;
void setup(){
  size(600,340);
  fondo1 = loadImage("fondo1.jpg");
  fondo2 = loadImage("fondo2.jpg");
  fondo3 = loadImage("fondo3.jpg");
  fondo4 = loadImage("fondo4.jpg");
  fondo5 = loadImage("fondo5.jpg");
  background(fondo1);
  fuente = createFont("fuente.ttf",40);
  fuente2 = loadFont("fuente1.vlw");
  textAlign(CENTER,CENTER);
  subir = 370;
  aumentar = 10;
}
void draw(){ 
textFont(fuente);
  background(fondo1);
if (frameCount<300){
  fill(random(255));
  textSize(aumentar);
  aumentar = aumentar + 0.10;
  subir = subir - 1;
  text("Un Show Mas", width/2,subir);
}
 fill(0);
 textFont(fuente2,30);
if(frameCount>300){
  background(fondo2);
  text("Personajes principales", width/2 + 100, 25);
  text("Mordecai", 80, height/2 + 30);
  text("Rigby", width - 100, height/2); 
}
  if(frameCount>600){
  background(fondo3);
  text("Personajes secundarios",width/4 + 20, 25);
  text("Fantasmano", 150, height - 25);
  text("Musculoso", width - 90, height/4 + 15); 
  }
  if(frameCount>900){
  background(fondo4);
  text("Compositor \n Mark Mothersbaugh", 420, 220);
  text("Director \n J. G. Quintel", 100, 50);
  }
  if(frameCount>1200){
  background(fondo5);
  text("Toca para resetear", 140, 305);
  }
}
void mousePressed(){
  if(frameCount>1200){
  if ((mouseX > 140) && (mouseX < 140+144) && (mouseY > 305) && (mouseY < 305+16)|| (keyPressed)) {
 botonR = true;
 }else{
   botonR = false;
  background(fondo1);
  frameCount = 0; 
  subir = 370;
  aumentar = 10;
 }
}
}
