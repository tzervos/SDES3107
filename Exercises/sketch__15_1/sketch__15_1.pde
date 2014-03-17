size (300,300);
background (200);

int x = 190;
int y = 170; 

float size = 20;
float hue = 140;
float transparency = 50;
colorMode (HSB,600,50,40);

float v = 0.0;

for (int i = 0; i < 100; i ++) {
  ellipse (x, y, 50, 50);
}

x = round (random (width));
y = round (random (height)); 
size = random (800);

ellipse (x,y, size,size);

for (int i = 0; i < 300; i ++) {
  x = round (random (width));
  y = round (random(height)); 
  size= random (10, 40);
  hue = random (160,230);
  transparency = random (100);
  
  fill (hue, 500, 90, transparency);
  ellipse (x,y, size, size);
}  
