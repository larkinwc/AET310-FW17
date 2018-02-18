// AET 310 Creative Coding Fall 2017
// Larkin Williams-Capone
// Challenge #5

//colors for where to store lerp, intital and target lerp
color c = color(0);
color s = color(81, 169, 143);
color e = color(89, 130, 213);

//inc amounts
float i = .03;
float j = .015;
int k = 0;
int k1 = 0;
int inc = 1; //so we can change the speed

//start point for rotating lines
float y;

void setup() {
  
  background(245);
  fullScreen();
  noStroke();
  
  y = random(height);
}

void draw() {
  
  colorMan();
  fill(c);
  noStroke();
  ellipse(width/2, height/2, 500, 500);
  
  
  pushMatrix();
  translate(k1, y);
  rotate(k); 
  stroke(c);
  line(0,0, 100, 100);
  popMatrix();
  
  k ++;
  k1 += inc;
  
  //change y if we move off the screen
  if(k1 > width || k1 < 0) {
    y    = random(height);
    inc *= -1;
  }
}

//color manager function to help lerp our colors
void colorMan(){
  if(frameCount % 3 == 0) {  
      c  = lerpColor(s, e, i);
      i += j;
  }
  if(frameCount % 180 == 0) {
    j *= -1;
  }
}