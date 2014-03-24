PImage image;
PImage image2;


int mX, mY = 0;

void setup() {
  frameRate (20);
  image = loadImage("monkey_face_cartoon-555px.jpeg");
  image2 = loadImage("eyeglasses.png");
  
  size (image.width/2, image. height/2);
  fill (0);

}
void draw () {
  image (image, 0, 0, image.width/2, image.height/2);
  image (image2, mouseX-80, mouseY-80, image2.width/6, image2.height/6);
}
