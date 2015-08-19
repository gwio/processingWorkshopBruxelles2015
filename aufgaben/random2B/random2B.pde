float posXold;
float posYold;
float posXnew;
float posYnew;
float punkt;
float tempo;
float distance;

void setup() {
  size(600, 600); 
  background(#F5FAFC);
  posXnew = width/2;
  posYnew = height/2;
  punkt = 10; 
  tempo = 38.0;
  frameRate(10);
  noFill();
}

void draw() {

  stroke(0, 0, 0, 50);

  posXold = posXnew;
  posYold = posYnew;

  posXnew += tempo*random(-1, 1) ;
  posYnew += tempo*random(-1, 1) ;

  distance = dist(posXold, posYold, posXnew, posYnew);
  println(distance);

  ellipse(posXnew, posYnew, distance, distance);
  line(posXold, posYold, posXnew, posYnew);




  //rechts
  if (posXnew > width) {
    posXnew = width;
  }

  //links
  if (posXnew < 0) {
    posXnew = 0;
  }

  //unten
  if (posYnew > height) {
    posYnew = height;
  }

  //oben
  if (posYnew < 0) {
    posYnew = 0;
  }
}


void keyPressed() {

  if (key == '1') {
    tempo = 14.0;
  }

  if (key == '2') {
    tempo = 38.0;
  }

  if (key == '3') {
    tempo = 56.0;
  }
}

