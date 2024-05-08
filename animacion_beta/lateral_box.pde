void lateral_box(){
  pushMatrix();
//Configuración predeterminada
  strokeWeight(3);
  noFill();
  //stroke(255);
  translate(width/2, height/2);
  
//BOX_1
  stroke(100);
  scale(scale - 1.5);
  rotateX(angle/5);
  rotateY(angle/2.5);
  box(200);

//BOX_2
  stroke(150);
  scale(scale - 1);
  rotateX(-angle/9.5);
  rotateY(angle/5);
  box(200);

//BOX_3
  stroke(200);
  scale(scale + 2);
  rotateX(-angle/12.5);
  rotateY(-angle/7.77);
  box(100);
  
//BOX_4 pero no tan cuadrado sino añadido BETA
  stroke(5);
  //fill(25, 25, 25, 15);
  scale(scale + 5);
  rotateX(-angle/12.5);
  rotateY(-angle/7.77);
  sphereDetail(0);
//sphere(200);
  popMatrix();
 
}
