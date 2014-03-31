size (300,300);
background(20);
PFont font1;

font1 = loadFont ("ACaslonPro-Bold-48.vlw");
textFont (font1, 48);
fill (30, 60, 40);
float mytextWidth = textWidth ("ACaslonPro-Bold-48.vlw");
text ("ACaslonPro-Bold-48.vlw", (width/2)- (mytextWidth/2), 20);
