//Postition
int lineA;
float lineB;

void setup() {
  size(800, 200);
  background(0, 0, 0);

  //bei 0 startet die Linie
  lineA = 0;
  lineB = 0;
}


void draw() {
  background(0, 0, 0);

  rect(0, 0, lineA, height/2);
  rect(0, height/2, lineB, height/2);

  lineA = lineA + 1;
  lineB = lineB + 0.3;

  if (lineA > width) {
    lineA = 0;
  }

  if (lineB > width) {
    lineB = 0;
  }
}

