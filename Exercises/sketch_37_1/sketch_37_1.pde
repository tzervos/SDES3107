PImage cow;
PFont f;

int [] hues = {131, 300,60, 5};

void setup() {
  size (1000, 600);
  colorMode (HSB, 360,100,100);
  cow = loadImage ("cow-face.jpg");
  f = createFont ("Arial", 72);
  textFont (f);
  textAlign (CENTER);
  fill (0);
}
void draw () {
  image (cow, 0, 0, width, height);
  fill (hues [0], 100, 100);
  text ("COW", width-mouseX, height-mouseY);
  fill (hues [1], 100, 100);
  text ("WOW", mouseX, mouseY);
}

