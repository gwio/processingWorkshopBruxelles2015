float positionX;
float positionY;
float punkt;
float tempo;


void setup() {
  size(600, 600); 
  background(0, 0, 0);
  positionX = width/2;
  positionY = height/2;
  punkt = 10; 
  tempo = 4.0;
  noStroke();
}

void draw() {

  fill(255, 255, 255, 50);
  ellipse(positionX, positionY, punkt, punkt);

  positionX += tempo*random(-1, 1) ;
  positionY += tempo*random(-1, 1) ;

  //rechts
  if (positionX > width) {
    positionX = width;
  }

  //links
  if (positionX < 0) {
    positionX = 0;
  }

  //unten
  if (positionY > height) {
    positionY = height;
  }

  //oben
  if (positionY < 0) {
    positionY = 0;
  }
}


void keyPressed() {

  if (key == '1') {
    tempo = 4.0;
  }

  if (key == '2') {
    tempo = 8.0;
  }

  if (key == '3') {
    tempo = 16.0;
  }
}

