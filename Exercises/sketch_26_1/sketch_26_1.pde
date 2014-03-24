float gray = 0;

void setup() {
  size(500, 500);
}

void draw() {
  background(gray);
  if (mousePressed == true);
}

  void mousePressed() {
    gray += 5;
}
  void mouseReleased() {
    gray += 20;
}

