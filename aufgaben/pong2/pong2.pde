//Pong Balken width und height
float balkenH;
float balkenW;
//Pong Balken Tempo
float balkenSpeed;
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

  balkenSpeed = 6.5;
  balkenPosX = 20;

  ballX = width/2;
  ballY = height/2;

  ballSpeedX = 5.0;
  ballSpeedY = 5.0;

  ballSize = 40;
}


void draw() {
  background(0, 0, 0);

  rect(balkenPosX, balkenPosY, balkenW, balkenH);

  ellipse(ballX, ballY, ballSize, ballSize);

  ballX += ballSpeedX;
  ballY += ballSpeedY;

  // balkenPosY = mouseY-balkenH/2;

  if (ballSize > 8) {

    if (balkenPosY < mouseY-balkenH/2) {
      balkenPosY += balkenSpeed;
    }

    if (balkenPosY > mouseY-balkenH/2) {
      balkenPosY -= balkenSpeed;
    }

    //linke Seite
    if (ballX < balkenPosX) {
      ballX = width/2;
      ballY = height/2;
      ballSpeedX *=-1;

      ballSpeedX *= 1.1;
      ballSpeedY *= 1.1;
      balkenH *= 0.9;
      ballSize *= 0.9;
    }

    //rechte Seite
    if (ballX > width-ballSize/2) {
      ballSpeedX *= -1;
      ballSpeedY += random(-0.25, 0.25);
    }

    //obere Seite
    if (ballY < 0+ballSize/2) {
      ballSpeedY *= -1;
      ballSpeedX += random(-0.25, 0.25);
    }

    //untere Seite
    if (ballY > height-ballSize/2) {
      ballSpeedY *= -1;
      ballSpeedX += random(-0.25, 0.25);
    }

    //Pong Balken
    contact = balkenPosX+balkenW+(ballSize/2);
    if (  (ballY > balkenPosY) && (ballY < balkenPosY+balkenH) && (ballX < contact) ) {
      ballSpeedX *= -1;
      ballSpeedY += random(-0.25, 0.25);
      ballX = contact;
    }
  } else {
    background(255, 255, 255);
  }
}

