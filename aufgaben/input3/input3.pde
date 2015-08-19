void setup() {
  size(700, 450);

  noStroke();
  strokeWeight(4);
  fill(0, 0, 0);
  rect(0, 0, width/2, height);
  fill(255, 255, 255);
  rect(width/2, 0, width/2, height);
}


void draw() {
}

void mousePressed() {

  println(mouseX);
  noFill();

  if ( mouseX > width/2) {
    stroke(0, 0, 0);
  } else {
    stroke(255, 255, 255);
  }

  ellipse(mouseX, mouseY, 70, 70);
  line(mouseX-35, mouseY, mouseX+35, mouseY);
  line(mouseX, mouseY+35, mouseX, mouseY-35);
  ellipse(mouseX-35, mouseY, 40, 40);
  ellipse(mouseX+35, mouseY, 40, 40);
}

