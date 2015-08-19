//add minim / sketch->import library->add library minim
import ddf.minim.*;

Minim minim;
AudioSample kick;
AudioSample snare;

PFont font;

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

int score;
float fillColor;

void setup() {
  size(800, 500);

  //sound
  minim = new Minim(this);

  kick = minim.loadSample( "BD.mp3", 512);
  snare = minim.loadSample("SD.wav", 512);

  font = loadFont("font.vlw");
  textFont(font, 32);
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

  score = 0;
  fillColor = 0;
}


void draw() {
  // background(0, 0, 0);

  if (fillColor > 0) {
    fillColor-=5;
  }

  fill(fillColor, 50);
  rect(0, 0, width, height);

  fill(255, 255, 255);
  rect(balkenPosX, balkenPosY, balkenW, balkenH);

  ellipse(ballX, ballY, ballSize, ballSize);

  ballX += ballSpeedX;
  ballY += ballSpeedY;


  if (ballSize > 8) {
    text("Score: "+score, width-200, 40);

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

      kick.trigger();
      fillColor = 255;
    }

    //rechte Seite
    if (ballX > width-ballSize/2) {
      ballSpeedX *= -1;
      ballSpeedY += random(-0.25, 0.25);

      snare.trigger();
    }

    //obere Seite
    if (ballY < 0+ballSize/2) {
      ballSpeedY *= -1;
      ballSpeedX += random(-0.25, 0.25);

      snare.trigger();
    }

    //untere Seite
    if (ballY > height-ballSize/2) {
      ballSpeedY *= -1;
      ballSpeedX += random(-0.25, 0.25);

      snare.trigger();
    }

    //Pong Balken
    contact = balkenPosX+balkenW+(ballSize/2);
    if (  (ballY > balkenPosY) && (ballY < balkenPosY+balkenH) && (ballX < contact) ) {
      ballSpeedX *= -1;
      ballSpeedY += random(-0.25, 0.25);
      ballX = contact;

      snare.trigger();

      score++;
    }
  } else {
    background(255, 255, 255);
    fill(0, 0, 0);
    textAlign(CENTER);
    text("Game Over", width/2, height/2);
  }
}