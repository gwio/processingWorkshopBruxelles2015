
int mode;

void setup() {
  size(500, 500); 
  background(#F7F5E6);

  mode = 1;
}

void draw() {
}


void mouseDragged() {

  if (mode == 1) {
    stroke(#A5A0A0);
    ellipse(mouseX, mouseY, 10, 10);
  }

  if (mode == 2) {
    stroke(#E59B9C);
    ellipse(mouseX, mouseY, 30, 30);
  }

  if (mode == 3) {
    stroke(#E8BFED);
    ellipse(mouseX, mouseY, 50, 50);
  }
}


void keyPressed() {

  if (key == '1') {
    mode = 1;
  } 

  if (key == '2') {
    mode = 2;
  }

  if (key == '3') {
    mode = 3;
  }

  if (key == '4') {
    background(#F7F5E6);
  }

  if (key == '5') {
    saveFrame();
  }
}

