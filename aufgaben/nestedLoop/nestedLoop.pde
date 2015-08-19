PImage lego;
PImage foto;


void setup() {
  lego = loadImage("lego.png");
  foto = loadImage("image.jpg");


  //get window width&height from image width&height, works only with processing2 
  //size(foto.width,foto.height);
  
  //use fixed size with processing3
  size(650, 650);

  for (int x = 0; x < width; x+=16) {
    for (int y = 0; y < height; y+=16) {
      color c = foto.get(x, y);
      tint(c);
      image(lego, x, y, 16, 16);
    }
  }
}

void draw() {
}

void keyPressed() {
  saveFrame("bild.png");
}