void setup() { 
  size(200,600); 
  background (0,150,90);
  fill(250); 
  noStroke();
  frameRate (10);
}
void draw() {
  int randomPos = int(random(300.0)); 
  rect(randomPos,randomPos+ 80,10,100);
}


