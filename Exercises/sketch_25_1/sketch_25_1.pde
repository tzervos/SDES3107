
//
//PFont myFont;
//
//void setup () {
//myFont=createFont("Arial",2);
//  textFont (myFont, 80);
//}
//
//void draw () {
//  background (0);
//  text (key, 10, 90);
//}



void setup() {
  size(300, 300);
  smooth();
  stroke (250,490, 75);
  strokeWeight(9);
  
} 

void draw() {
  background(60, 50, 90);

  if ((keyPressed == true) && (key == '3')) {
    line (150, 70, 200, 200);
  } 
  else {
    ellipse(150, 150, 150, 150);
  }
}

