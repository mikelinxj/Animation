void marco (){
  pushMatrix();
  translate(width/2, height/2);
  strokeWeight(0.1);
  
  scale(scale + 48.5);
  rectMode(CENTER);
  noFill();
  stroke(50);
  box(20, 20, 15);
  
  stroke(100);
  box(15, 15, 10);
  
  stroke(150);
  box(10, 10, 5);
  
  popMatrix();
}
