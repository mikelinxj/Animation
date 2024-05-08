//Rect central

float R1 = random(random(50, 150), 150);
float R2 = random(random(150, 255), 255);
float G1 = random(random(50, 150), 150);
float G2 = random(random(150, 255), 255);
float B1 = random(random(50, 150), 150);
float B2 = random(random(150, 255), 255);

float colorR = 0;
float colorG = 0;
float colorB = 0;

//ritmo
float scale_rect;

void center_box (){
  
  //rect_1
  pushMatrix();
  //fill(155);
  //noStroke();
  rect_central_1();
  scale_rect();
  box(50);
  popMatrix();
  
  //rect_2
  pushMatrix();
  //fill(155);
  //noStroke();
  rect_central_2();
  scale_rect();
  box(100);
  popMatrix();
}

// Escala de la esfera a seguir con el RITMO-----------------!!!!!!!!!1
void scale_rect (){
  if (millis() - lastBeatTime >= beatInterval) { // Verifica si ha ocurrido un latido
    // Cambiar el tamaño del círculo
    scale_rect += 20; // Aumenta el tamaño del círculo
    lastBeatTime = millis(); // Actualiza el tiempo del último latido
  }
  
  scale(scale_rect/50);// Efecto de movimiento 
  
  if (scale_rect > 50) { // Reduce el tamaño del círculo gradualmente hasta su tamaño original
    scale_rect -= 1;
  }
}

void rect_central_1 (){
  translate(width/2, height/2, 200);
  rotateX(angle/3);
  rotateY(angle/2);
  colorR = map(scale, 1, 3, R1, R2);
  colorG = map(scale, 1, 3, G1, G2);
  colorB = map(scale, 1, 3, B1, B2);
 
  fill(colorR, colorG, colorB);
  //noFill();
  //strokeWeight(1.0 / (scale + 0.5));
  strokeWeight(1);
  stroke(0);
  
}

void rect_central_2 (){
  translate(width/2, height/2);
  rotateX(angle/3);
  rotateY(angle/2);
  colorR = map(scale, 1, 3, R1, R2);
  colorG = map(scale, 1, 3, G1, G2);
  colorB = map(scale, 1, 3, B1, B2);
 
  fill(colorR, colorG, colorB, 85);
  //noFill();
  //strokeWeight(1.0 / (scale + 0.5));
  strokeWeight(1);
  stroke(0);
  
}
