void setup() { 
  size(700,400); 
  smooth ();
}

void draw () {
  background (600);
  noStroke ();
  fill(0,190,230);
  ellipse (width-mouseX *2, mouseY, 60, 60);
  ellipse (mouseX+340, 60, 60, 60);
  ellipse(mouseX-20, 84, 33, 33);
  
float x = mouseX;
float y = mouseY;
float ix = width - mouseX;
float iy = mouseY - height; 
fill(250, 100);
ellipse(x, height/2, y, y);
fill(0, 100);
ellipse(ix, height/2, iy, iy);
}
