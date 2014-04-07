void setup ()
{
  size (400, 400);
  smooth ();
  noLoop ();
}
void draw () {

  float c = 5.0;

  for (int y = 0; y <= height; y += 100) {
    for (int x = 0; x <= 200; x += 100) {

      arch (c, x, y);
      c +=9;
    }
  }
}
void arch (float curvature, int x, int y) {
  float c = 99.0;
  strokeWeight (4);
  noFill ();
  beginShape ();
  vertex (x +15.0, y + c);
  bezierVertex (x + 15.0, y + c-curvature, x+30.0, y +55.0, x + 50.0, y+50.0);
  bezierVertex (x + 70.0, y + 55.0, x + 85.0, y + c-curvature, x+85.0, y+c);
  endShape();
} 

