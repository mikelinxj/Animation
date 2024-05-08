int tiempo ;
//MÚSICA
import processing.sound.*;
SoundFile song;

float bpm = 128; // BPM de la canción "Uprising" de Muse
float beatInterval; // Intervalo entre latidos en milisegundos
float lastBeatTime = 0; // Tiempo del último latido
float scale_esfera = 0;


//GRÁFICA
float angle = 0.0;
float scale = 0;

PImage img;

void setup(){
  size(1000, 1000, P3D);
  
  //MÚSICA:
  song = new SoundFile(this, "Muse - Uprising [Official Video].mp3");
  song.loop();
  
  // Calcula el intervalo entre latidos en milisegundos
  beatInterval = 60000 / bpm;

  img = loadImage("fondo.jpg");
  
}
void draw(){
  tiempo = millis();
  background(map(sin(angle), 0, 1, 0, 50));
  //tint(255, 126);
  //translate(0, 0, -1000);
  //image(img, 0, 0, width, height);
  
  angle +=0.1;
  scale = sin(angle)+1.5;
  
  if (tiempo < 20000){
    name1();
  }
  if (tiempo >= 20000){
    name2();
    lateral_box();
    if (tiempo >= 30000){
      center_box();
      if (tiempo >= 35000){
        esfera();
      }
    }
  }
  marco();
  lectura_variable();
}
