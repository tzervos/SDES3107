PFont font;
String [] words = { 
  "Toula","congrats", "on", "the", "HD"
};

int whichWord = 0;
void setup() {
  size (200, 200);
  font = loadFont ("Dialog-48.vlw");
  textFont (font);
  textAlign(CENTER);
  frameRate(3);
}
void draw() {
  background(0);
  whichWord ++;
  if (whichWord == words.length){
    whichWord = 0;
  }
  text (words[whichWord], width/2, 55);
  
}
