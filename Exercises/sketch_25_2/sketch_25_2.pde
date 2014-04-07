int x = 40;
void setup () {
  size (200,100);
  smooth ();
  strokeWeight (7);
}
void draw () {
  background (250);
  if (keyPressed == true) {
x++; 
  ellipse (x, 40, x - 30, 80);
}}
