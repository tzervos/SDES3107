//size(300,100);
//background(0,0,255);
////
//fill(225);
//ellipse(0,10,80,80);
//fill(0,200,0);
//ellipse (50,50,30,30);
//
//
//fill(225);
//
//println ("this variable:"+ 50) ;
//
//float middleX= 150;
//float middleY =height/2;
//
//stroke (120,0,0);
//strokeWeight(4);
//line(90,20,middleX,middleY);
//
//
//ellipse (middleX,middleY,50,50);
//
//int a = 200;
//strokeWeight(1);
//line (a,0,a,middleX);
//a = a+60; 
//strokeWeight (7);
//line(a,0,a,middleY);
//
//float x = 100;
////ellipse(x-50, x-50, x/66, x/6);
////ellipse (x,x,x/3, x/3);
////ellipse (x+50, x+50, x/2, x/2);
//
//strokeWeight (2);
//stroke (255,0,0);
//line (x,0,x,height);
//x=x*2.5;

size (500,500);
background(0,100,400);
for (int counter =20; counter<500; counter+=10)
{ line (counter, 20, counter, 490);
} 
strokeWeight(6);


for (int x = 30; x < width; x +=30)
{
  for (int y = 30; y < height; y +=30)
  {
    ellipse (x,y,3,3);
  }
}


