//Pong Balken width und height
float balkenH;
float balkenW;
//pong Balken Position
float balkenPosX;
float balkenPosY;
//Ball Position
float ballX;
float ballY;
//Ball Geschwindigkeit
float ballSpeedX;
float ballSpeedY;
//Ball Size
float ballSize;
//Der Punkt an dem der Ball den Balken berührt
float contact;

void setup() {
  size(800, 500);
  noStroke();
  fill(255, 255, 255);

  balkenH = 100;
  balkenW = 20;

  balkenPosX = 20;

  ballX = width/2;
  ballY = height/2;

  ballSpeedX = 4.0;
  ballSpeedY = 4.0;

  ballSize = 40;
}


void draw() {
  background(0, 0, 0);

  rect(balkenPosX, balkenPosY, balkenW, balkenH);

  ellipse(ballX, ballY, ballSize, ballSize);

  ballX += ballSpeedX;
  ballY += ballSpeedY;

  balkenPosY = mouseY-balkenH/2;

  //linke Seite
  if (ballX < balkenPosX) {
    ballX = width/2;
    ballY = height/2;
    ballSpeedX *=-1;
  }

  //rechte Seite
  if (ballX > width-ballSize/2) {
    ballSpeedX *= -1;
  }

  //obere Seite
  if (ballY < 0+ballSize/2) {
    ballSpeedY *= -1;
  }

  //untere Seite
  if (ballY > height-ballSize/2) {
    ballSpeedY *= -1;
  }

  //Pong Balken
  contact = balkenPosX+balkenW+(ballSize/2);
  if (  (ballY > balkenPosY) && (ballY < balkenPosY+balkenH) && (ballX < contact) ) {
    ballSpeedX *= -1;
    ballX = contact;
  }
}

