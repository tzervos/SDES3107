


import processing.pdf.*;
import java.util.Calendar;

boolean savePDF = false;

float tileCountX = 2;
float tileCountY = 2;
int count = 20;

int drawMode = 60;


void setup() { 
  size(600, 600);
} 


void draw() { 
  if (savePDF) beginRecord(PDF, timestamp()+".pdf");

  rectMode(CENTER);
  smooth();
  strokeWeight(3);
  noFill();
  background(250);

  count = mouseX/2 + 5;
  float para = (float)mouseY/height;

  for (int gridY=0; gridY<= tileCountY; gridY++) {
    for (int gridX=0; gridX<= tileCountX; gridX++) {  

      float tileWidth = width / tileCountX;
      float tileHeight = height / tileCountY;
      float posX = tileWidth*gridX + tileWidth/8;
      float posY = tileHeight*gridY + tileHeight/8;

      pushMatrix();
      translate(posX, posY);
      colorMode(RGB, 20, 50, 20);
      for (float i=0; i< count; i++) {
        noStroke();
        color gradient = lerpColor(color(0, 130, 164), color(255), i/count);
        fill(gradient, 150);

        pushMatrix();
        translate(3*i, 3);
        ellipse(-5, -6, tileWidth*.9, tileHeight*.9);
        popMatrix();

        pushMatrix();
        translate(3*i, 3);
        ellipse(-5, -6, tileWidth*.9, tileHeight*.9);
        popMatrix();

        scale(1 - 1.5/count);
        rotate(para*1.5);
      }
      popMatrix();
    }
  }
 smooth();
            strokeWeight(1);
            smooth();
            stroke(0, 255);
            frameRate (3);
            line(0, random(600), 600, random(600));
            line(0, random(600), 600, random(600));
            line(0, random(600), 600, random(600));
            line(0, random(600), 600, random(600));
            line(0, random(600), 600, random(600));


if (savePDF) {
    savePDF = false;
    endRecord();
  }
} 


void keyReleased() {

  if (keyCode == DOWN) tileCountY = max(tileCountY-5, 5);
  if (keyCode == UP) tileCountY += 3;
  if (keyCode == LEFT) tileCountX = max(tileCountX-5, 5);
  if (keyCode == RIGHT) tileCountX += 3;
}

// timestamp
String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}








