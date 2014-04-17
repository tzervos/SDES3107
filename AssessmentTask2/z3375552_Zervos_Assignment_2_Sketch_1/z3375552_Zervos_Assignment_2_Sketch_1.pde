import processing.pdf.*;
import java.util.Calendar;

boolean savePDF = false;

color moduleColorBackground = color(355,159,26);
color moduleColorForeground = color(255);

color moduleAlphaBackground = 900;
color moduleAlphaForeground = 300;

float moduleRadiusBackground = 40;
float moduleRadiusForeground = 15;

color backColor = color(239,255,28);


float tileCount = 24;
int actRandomSeed = 10;

PFont font;
String s = "Hey, Josh!";
float angle = 0.0;

void setup(){
  size(600, 600);
  font = loadFont("AvenirNext-DemiBold-100.vlw"); 
  textFont(font, 24);
  fill (255);

}

void draw() {
  if (savePDF) beginRecord(PDF, timestamp()+".pdf");

  translate(width/tileCount/2, height/tileCount/2);

  
  background(255,223,36);
  smooth();
  fill (255);
  stroke(2);
  angle += 0.02;
  pushMatrix();
  translate(150, 100); 
  scale((cos(angle*4.0) + .8) * 1.5); 
  rotate(angle);
  text(s, 5, 0);
  popMatrix();
  
  

  randomSeed(actRandomSeed);
  noStroke ();

  for (int gridY=-2; gridY<tileCount; gridY++) {
    for (int gridX=-3; gridX<tileCount; gridX++) {
      float posX = width/tileCount * gridX;
      float posY = height/tileCount * gridY;

      float shiftX =  random(0, 4) * mouseX *2;
      float shiftY =  random(0, 4) * mouseY *2;

      fill(moduleColorBackground, moduleAlphaBackground);
      ellipse(posX+shiftX, posY+shiftY, moduleRadiusBackground*2, moduleRadiusBackground*2);
    }
  }

  for (int gridY=0; gridY<tileCount; gridY++) {
    for (int gridX=0; gridX<tileCount; gridX++) {

      float posX = width/tileCount * gridX;
      float posY = height/tileCount * gridY;

      fill(moduleColorForeground, moduleAlphaForeground);
      rect(posX, posY, moduleRadiusForeground*2, moduleRadiusForeground*.5);
    }
  }

  if (savePDF) {
    savePDF = false;
    endRecord();
  }
}

void mousePressed() {
  actRandomSeed = (int) random(200);

}

// timestamp
String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}












