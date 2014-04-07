size (150,300);
noFill ();
smooth ();
for (int x=0; x<200; x+=8){
  float n=norm (x, 0.0,80.0);
  float y= pow (n,4);
  y*=70;
  strokeWeight(n+12);
  ellipse (x,y,150,150);
}

