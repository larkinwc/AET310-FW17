
//Original string, \n is a new line
String l = "Original String \n";

//Literal string array, put values in here like { "VALUE", ... }    
String[] l1 = {"First", "Second", "Third \n" };

//State for accessing array
int click = 0;

void setup() {
  
 size(800,800); 
}

void draw() {
  //font size 50
  textSize(50);
  
  //place to draw string l
  text(l, 200,200);
  
}

void mousePressed() {
  
  //add string from the array in spot click to string l
  l += l1[click];
  //add to state array
  click++;
  //reset if at the end of the array
  if(click >= l1.length) {
    click = 0;
  }
}