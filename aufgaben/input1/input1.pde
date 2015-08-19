void setup() {
  size (800, 600);
  background(#62B8D8);
}

void draw() {
  //background(#62B8D8);

  stroke(#294D5A);

  line(0, 0, mouseX, mouseY);

  noFill();

  ellipse(mouseX, mouseY, 35, 35);

  println(mouseX+" "+mouseY);
}

