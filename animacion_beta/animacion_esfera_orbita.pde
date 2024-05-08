float angle_esfera = 0; // Ángulo inicial
float speed = 0.05; // Velocidad de rotación

float Xesfera1 = 0;
float Yesfera1 = 0;
float Xesfera2 = 0;
float Yesfera2 = 0;
float Xesfera3 = 0;
float Yesfera3 = 0;
float Xesfera4 = 0;
float Yesfera4 = 0;


void esfera (){
  //ESFERA 1 orbita
  pushMatrix();
  translate(width/2, height/2);
  rotate(angle /5);
  box(15);
  
  animacion1();
  stroke(#F6FF00);
  strokeWeight(0.5);
  color_de_esfera_1();
  detalle_de_esfera();
  scale_esfera();
  sphere(60);
  popMatrix();
  
  //ESFERA 2 orbita
  pushMatrix();
  translate(width/2, height/2);
  rotate(angle /4);
  //rotateX(45);
  //rotateY(45);
  box(15);
  
  animacion2();
  stroke(#B200FF);
  strokeWeight(0.5);
  color_de_esfera_2();
  detalle_de_esfera();
  scale_esfera();
  sphere(50);
  popMatrix();
  
  //ESFERA 3 orbita
  pushMatrix();
  translate(width/2, height/2);
  rotate(angle /3);
  //rotateX(90);
  //rotateY(90);
  box(15);
  
  animacion3();
  stroke(#A1FF00);
  strokeWeight(0.5);
  color_de_esfera_3();
  detalle_de_esfera();
  scale_esfera();
  sphere(40);
  popMatrix();

  //ESFERA 4 orbita
  pushMatrix();
  translate(width/2, height/2);
  rotate(angle /2);
  //rotateX(270);
  //rotateY(270);
  box(15);
  
  animacion4();
  stroke(#00FF2C);
  strokeWeight(0.5);
  color_de_esfera_4();
  detalle_de_esfera();
  scale_esfera();
  sphere(30);
  popMatrix();
  
  
  angle_esfera += speed; // Incrementa el ángulo
}



void animacion1 (){
  
  Xesfera1 = width / 2 + cos(angle_esfera) - 250;
  Yesfera1 = height / 2 + sin(angle_esfera) - 250;

  translate(Xesfera1, Yesfera1);
}

void animacion2 (){
  
  Xesfera2 = width / 2 - cos(angle_esfera ) - 300;
  Yesfera2 = height / 2 - sin(angle_esfera ) - 300;

  translate(Xesfera2, Yesfera2);
}

void animacion3 (){
  
  Xesfera3 = width / 2 - cos(angle_esfera ) - 350;
  Yesfera3 = height / 2 - sin(angle_esfera ) - 350;

  translate(Xesfera3, Yesfera3);
}

void animacion4 (){
  
  Xesfera4 = width / 2 - cos(angle_esfera ) - 400;
  Yesfera4 = height / 2 - sin(angle_esfera ) - 400;

  translate(Xesfera4, Yesfera4);
}
