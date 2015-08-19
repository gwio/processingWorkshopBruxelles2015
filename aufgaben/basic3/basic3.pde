void setup() {

  size(800, 800);
  background(0, 0, 0);
  
  stroke(255, 255, 255);
  line(400, 0, 400, 800);
  line(0, 400, 800, 400);

  //oben links
  stroke(255, 255, 255);
  fill(255, 0, 0);
  rect(50, 50, 300, 300);
  fill(0, 255, 0);
  rect(100, 100, 200, 200);
  
  //oben rechts
  noStroke();
  fill(0, 0, 255);
  ellipse(600, 200, 200, 300);
  fill(255, 255, 0);
  ellipse(600, 200, 300, 200);

  //unten links
  noFill();
  stroke(#E744FA);
  ellipse(200, 600, 100, 100);
  stroke(#9FDBEA);
  ellipse(200, 600, 200, 200);
  stroke(#F2BF5F);
  ellipse(200, 600, 300, 300);

  //unten rechts
  noStroke();
  fill(#FFD1DF, 100);
  ellipse(600, 500, 150, 150);
  fill(#50E3D5, 150);
  ellipse(600, 600, 150, 150);
  fill(#FCE724, 150);
  ellipse(600, 700, 150, 150);
}

