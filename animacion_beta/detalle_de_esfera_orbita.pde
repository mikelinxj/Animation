//VARIABLES GRÁFICOS
int detalle_final = 0;

color esfera_RED = 0;
color esfera_GREEN = 0;
color esfera_BLUE = 0;

//Detalle de esfera central
void detalle_de_esfera(){ //Detalle de ambas esfera
  detalle_final = int(map(scale, 0, 1, 1, 7));
  sphereDetail(detalle_final);
}

// Escala de la esfera a seguir con el RITMO-----------------!!!!!!!!!1
void scale_esfera(){
  if (millis() - lastBeatTime >= beatInterval) { // Verifica si ha ocurrido un latido
    // Cambiar el tamaño del círculo
    scale_esfera += 20; // Aumenta el tamaño del círculo
    lastBeatTime = millis(); // Actualiza el tiempo del último latido
  }
  
  scale(scale_esfera/50);// Efecto de movimiento 
  
  if (scale_esfera > 50) { // Reduce el tamaño del círculo gradualmente hasta su tamaño original
    scale_esfera -= 1;
  }
}

//Color de esfera 1
void color_de_esfera_1(){
  esfera_RED = int(map(scale, 0, 1, 50, 255));
  esfera_GREEN = int(map(scale, 0, 1, 0, 0));
  esfera_BLUE = int(map(scale, 0, 1, 0, 0));
  fill(esfera_RED, esfera_GREEN, esfera_BLUE);
}

//Color de esfera 2
void color_de_esfera_2(){
  esfera_RED = int(map(scale, 0, 1, 0, 0));
  esfera_GREEN = int(map(scale, 0, 1, 50, 255));
  esfera_BLUE = int(map(scale, 0, 1, 0, 0));
  fill(esfera_RED, esfera_GREEN, esfera_BLUE);
}

//Color de esfera 3
void color_de_esfera_3(){
  esfera_RED = int(map(scale, 0, 1, 0, 0));
  esfera_GREEN = int(map(scale, 0, 1, 0, 0));
  esfera_BLUE = int(map(scale, 0, 1, 50, 255));
  fill(esfera_RED, esfera_GREEN, esfera_BLUE);
}

//Color de esfera 4
void color_de_esfera_4(){
  esfera_RED = int(map(scale, 0, 1, 25, 140));
  esfera_GREEN = int(map(scale, 0, 1, 0, 0));
  esfera_BLUE = int(map(scale, 0, 1, 50, 255));
  fill(esfera_RED, esfera_GREEN, esfera_BLUE);
}
