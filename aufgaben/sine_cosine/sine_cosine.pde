float x;
float y;

float x2;
float y2;

float counter;

void setup() {
  size(600, 600);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  noFill();
  background(0, 0, 0);
}

void draw() {
  //background(0, 0, 100);
  //fill(counter,100,100,50);
  stroke(counter, 44, 100, 40);

  x = (sin(counter)*100)+ 300 + (sin(counter/10)*100);
  y = (cos(counter)*100)+ 300 + (cos(counter/10)*100);

  ellipse(x, y, 10, 10);

  x2 = sin(counter/2)*50;
  y2 = cos(counter/2)*50;

  x2 += x;
  y2 += y;

  stroke(counter*1.2, 44, 100, 40);
  ellipse(x, y, 100, 100);
  ellipse(x2, y2, 10, 10);

  counter+=0.05;
}

void keyPressed() {

  if (key == 's') {
    saveFrame();
  }
}