float kreis;

void setup() {
  size(600, 600); 
  noFill();
  stroke(#E8561C);
  strokeWeight(8);

  kreis = 20;
}

void draw() {
  background(255, 255, 255);
  for (int i = 0; i < 10; i++) {
    ellipse(width/2, height/2, kreis*i+mouseX, kreis*i+mouseY );
  }
}


