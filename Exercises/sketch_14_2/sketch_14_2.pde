size (300,300);

fill (40,0,90);
noStroke();
smooth();
float radius = 1;
for (int deg = 0; deg < 360*12; deg += 20) {
 float angle = radians(deg);
 float x = 165 + (cos(angle) * radius);
 float y = 160 + (sin(angle) * radius);
 ellipse(x, y, 5,7);
 radius = radius + .9;
}

