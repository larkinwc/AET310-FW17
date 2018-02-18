// AET 310 Creative Coding Fall 2017
// Larkin Williams-Capone
// Challenge #2

//create arrays
float[] x = new float[100];
float[] y = new float[100];
float[] s = new float[100];
color[] c = new color[100];

//background color
color fill = color(128, 128, 140);

//string for text
String tstr = "Init Text";

//initialization
void setup() {
  size(500, 500);
  
  for(int i = 0; i < 100; i++) {
    
    x[i] = random(width);
    y[i] = random(height);
    s[i] = random(30);
    c[i] = color( map(x[i], 0, width, 0, 255), random(255), random(255));
    
  }
  
}


void draw() {
  
  background(fill);
  
  //draw circles
  for(int i = 0; i < 100; i++) {
    fill(c[i]);
    ellipse( x[i] , y[i], s[i], s[i]);   
  }
  
  fill(255);
  text(tstr, width/2, height/2);
  
  //every 3 seconds
  if(frameCount % 180 == 0) {
    for(int i = 0; i < 100; i++) {
      c[i] = color(random(255), map(x[i], 0, width, 0, 255), random(255));
    }
   fill = color(random(255), random(255), random(255));
  }
  
  fill(255);
  textSize(50);
  text(frameRate, width - 130, height)  ;
 
}

//change text
void mousePressed() {
  
  tstr = "New String";
  
}