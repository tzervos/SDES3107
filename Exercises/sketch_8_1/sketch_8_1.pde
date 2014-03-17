float i = 778;
println (map(i,0,500,1, 100));

// 0 0.001 0.002
for (float x = 0; x<1; x+=0.001) {
  float y = pow (x, 4);
  
  float xPos = map (x, 0, 1, 0, 100);
  float yPos = map (y, 0, 1, 0,100); 

point (xPos, yPos);
}
