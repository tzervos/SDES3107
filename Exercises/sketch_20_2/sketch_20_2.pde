void setup() {
  size(400, 400);
  background(0,20,30);
  stroke(250);
  noFill();
  rectMode(CENTER);
  strokeWeight (3);
}

void draw() {
  squares (200, 200, 200, 200);
}
void squares (int size, int number, int x, int y) { 
  for (int counter = number; counter > 8; counter-=35) {
    rect(x, y, size/2, size*3);
    size-=20;
  }
}

