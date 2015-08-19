void setup() {
  size (800, 600);
  strokeWeight(10);
  stroke(255, 255, 255);
}

void draw() {
  background(255, 255, 255);

  fill(#FA7272);
  triangle(0, 0, width, 0, mouseX, mouseY);

  fill(#C13E3E);
  triangle(width, 0, width, height, mouseX, mouseY);

  fill(#903043);
  triangle(width, height, 0, height, mouseX, mouseY);

  fill(#D3536D);
  triangle(0, 0, 0, height, mouseX, mouseY);
}

