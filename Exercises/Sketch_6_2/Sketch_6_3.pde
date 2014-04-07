size (400, 400);
stroke (6, 0, 0);
background (30);
ellipse (250, 250, 140, 140);
for (int x = 0; x< width; x =x+2) {
  if ((x>1) && (x<250)){
    line (x, 0, x, height);
  }
}
stroke (650, 0, 0);
for (int x = 0; x< 100; x= x+5) {
  if ((x>1) && (x<30)) {
    line (x, 0,x, 100);
  }
}
