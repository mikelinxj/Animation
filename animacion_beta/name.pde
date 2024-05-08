void name1 (){
  pushMatrix();
  textMode(SHAPE);
  textAlign(CENTER, CENTER);
  textSize(50);
  fill(255);
  //scale(scale);
  translate(width/2, height/2);
  rotate(angle/50);
  rotateX(angle/60);
  rotateY(angle/70);
  text("MIKELINXJ", 0, 0);
  popMatrix();
}

void name2 (){
  pushMatrix();
  textMode(SHAPE);
  textAlign(LEFT);
  textSize(30);
  fill(150, 150, 0);
  //scale(scale);
  text("MIKELINXJ",10, 25);
  popMatrix();

}
