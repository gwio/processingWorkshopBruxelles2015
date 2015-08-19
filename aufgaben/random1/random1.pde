float start;
float breite;
void setup() {
  size(800, 200); 
  background(255, 255, 255);
  start = 0;

  noStroke();
}

void draw() {
}

void keyPressed() {
  breite = random(150);
  fill(random(0, 255), random(100, 255), random(200, 255));
  rect(start, 0, breite, height);

  start += breite;

  if (start > width) {
    start = 0;
  }
}

