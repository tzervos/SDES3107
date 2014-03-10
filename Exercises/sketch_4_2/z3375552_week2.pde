size (500, 500);

// x = 0 5 10 15 20 ... width
background (50);
stroke (225,0,0);
for (int x = 0; x < width; x=x+5) {
  if ((x > 50) && (x < 150)) {
    line (x, 0, x, height);
    
  }
}

for (int x = 60; x < width; x=x+10) {
  if ((x > 90) && (x < 300)) {
    line (x, 180, x, height);
    
  }
}

for (int x = 250; x < width; x=x+30) {
  if ((x > 180) && (x < 500)) {
    line (x, 400, x, height);
    
  }
}

ellipse (350,380, 200,200);
ellipse (120,120,100,100);
ellipse (500,0,60,60);
