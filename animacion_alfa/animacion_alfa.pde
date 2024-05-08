float t = 0;//tiempo

//MÚSICA
import processing.sound.*;
SoundFile song;

float bpm = 128; // BPM de la canción "Uprising" de Muse
float beatInterval; // Intervalo entre latidos en milisegundos
float lastBeatTime = 0; // Tiempo del último latido
float scale_esfera = 0;


//GRÁFICA
float temp = 0;//temporizador

float angle = 0.0;
float scale = 0;

float colorRED = 0;
float colorBLUE = 0;
float colorGREEN = 0;
float colorBLACK = 0;

//VARIABLES GRÁFICOS
int detalle_final = 0;

color esfera_RED = 0;
color esfera_GREEN = 0;
color esfera_BLUE = 0;

//Rect central
float ritmo_rect_central  = 0.0 ;

float colorR = 0;
float colorG = 0;
float colorB = 0;

float R1 = 0;
float R2 = 0;

float G1 = 0;
float G2 = 0;

float B1 = 0;
float B2 = 0;


float angle_esfera = 0; // Ángulo inicial
float radius = 300; // Radio inicial
float speed = 0.05; // Velocidad de rotación
float Xesfera = 0;
float Yesfera = 0;

float a;
float angulo = PI/24.0;
int num = 12;




void setup(){
  size(1000, 1000, P3D);
  colorBLACK = #FF0A0A ;
  
  //MÚSICA:
  song = new SoundFile(this, "Muse - Uprising [Official Video].mp3");
  song.loop();
  
  // Calcula el intervalo entre latidos en milisegundos
  beatInterval = 60000 / bpm;
  
  //Rect central
  
  
  R1 = random(0, 500);
  R2 = random(-500, 500);
  
  G1 = random(-500, 500);
  G2 = random(-500, 500);
  
  B1 = random(-500, 500);
  B2 = random(-500, 500);
}

void draw(){
  background(map(sin(angle), 0, 1, 0, 50));
  temp = millis();
  
  angle +=0.1;
  scale = sin(angle)+1.5;
  
  
  stroke(255, 0, 0);
  strokeWeight(7);
  //line(width/2, height/2, width, 0);
  //line(width/2, height/2, 0, 0);
  //line(width/2, height/2, width, height);
  //line(width/2, height/2, 0, height);
  
  pushMatrix();
  translate(width/2, height/2);
  strokeWeight(0.5);
  
  scale(scale + 48.5);
  rectMode(CENTER);
  noFill();
  stroke(255, 0, 0);
  box(20, 20, 10);
  stroke(0, 255, 0);
  box(10, 10, 5);
  fill(155);
  noStroke();
  rect_central();
  box(3);
  popMatrix();
  
  pushMatrix();
//Configuración predeterminada
  strokeWeight(2);
  noFill();
  stroke(255);
  translate(width/2, height/2);
  
//BOX_1
  scale(scale + 0.25);
  rotateX(temp/500);
  rotateY(temp/250);
  box(100);

//BOX_2
  scale(scale + 0.5);
  rotateX(-temp/950);
  rotateY(temp/500);
  box(100);

//BOX_3
  scale(scale + 1);
  rotateX(-temp/1250);
  rotateY(-temp/777);
  box(100);
  popMatrix();
 
  pushMatrix();
  rect_central();
  box(100);
  popMatrix();
  
//ESFERA 1 orbita
  pushMatrix();
  animacion();
  translate(Xesfera, Yesfera);
  rotateX(radians(45));
  //rotateY(temp);
  //fill(255);
  stroke(0);
  strokeWeight(0.5);
  color_de_esfera();
  detalle_de_esfera();
  scale_esfera();
  sphere(75);
  noFill();
  stroke(0, 255, 0);
  rect(width/2, height/2, 200, 200);
  popMatrix();

//ESFERA 2 orbita
  pushMatrix();
  animacion2();
  translate(Xesfera, Yesfera);
  rotateX(radians(45));
  //rotateY(temp);
  //fill(255);
  stroke(0);
  strokeWeight(0.5);
  color_de_esfera();
  detalle_de_esfera();
  scale_esfera();
  sphere(75);
  noFill();
  stroke(0, 255, 0);
  rect(width/2, height/2, 200, 200);
  popMatrix();
  
  pushMatrix();
  
  //box(200);
  
  popMatrix();
}

// Escala de la esfera a seguir con el RITMO
void scale_esfera(){
    // Verifica si ha ocurrido un latido
  if (millis() - lastBeatTime >= beatInterval) {
    // Haz algo cuando ocurra un latido, como cambiar el tamaño del círculo
    scale_esfera += 20; // Aumenta el tamaño del círculo
    lastBeatTime = millis(); // Actualiza el tiempo del último latido
  }
  
  // Efecto de movimiento 
  scale(scale_esfera/50);
  
  // Reduce el tamaño del círculo gradualmente hasta su tamaño original
  if (scale_esfera > 50) {
    scale_esfera -= 1;
  }
  
  
}

void rect_central (){
  translate(width/2, height/2);
  rotateX(angle/5);
  rotateY(angle/10);
  println("ANGLE: " + angle);
  
  
  colorR = map(scale, 1, 3, R1, R2);
  println("RED: " + R1 , R2);
  
  colorG = map(scale, 1, 3, G1, G2);
  println("GREEN: " + G1 , G2);
  
  colorB = map(scale, 1, 3, B1, B2);
  println("BLUE: " + B1 , B2);
  
  fill(colorR, colorG, colorB);
  //noFill();
  //strokeWeight(1.0 / (scale + 0.5));
  strokeWeight(1);
  stroke(0);
 
}

//Detalle de esfera central
void detalle_de_esfera(){
  detalle_final = int(map(scale, 0, 1, 1, 7));
  sphereDetail(detalle_final);
}

//Color de esfera central
void color_de_esfera(){
  esfera_RED = int(map(scale, 0, 1, 255, 196));
  esfera_GREEN = int(map(scale, 0, 1, 193, 12));
  esfera_BLUE = int(map(scale, 0, 1, 100, 12));
  fill(esfera_RED, esfera_GREEN, esfera_BLUE);
}

void animacion (){
  
  Xesfera = width / 2 + cos(angle_esfera) * radius;
  Yesfera = height / 2 + sin(angle_esfera) * radius;
  
  fill(0); // Color del círculo
  
  angle_esfera += speed; // Incrementa el ángulo
  radius += 0.1; // Incrementa el radio
}

void animacion2 (){
  
  Xesfera = width / 2 - cos(angle_esfera) * radius;
  Yesfera = height / 2 - sin(angle_esfera) * radius;
  
  fill(0); // Color del círculo
  
  angle_esfera += speed; // Incrementa el ángulo
  radius += 0.1; // Incrementa el radio
}
