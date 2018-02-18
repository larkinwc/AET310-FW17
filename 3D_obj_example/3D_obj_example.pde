// AET 310 Creative Coding Fall 2017
// Larkin Williams-Capone
// Demo #6

float i = 0;
void setup() {
  
  //P3D is necessary to use 3D objects
  size(800, 800, P3D);
  
  noStroke();
}

void draw() {
  background(0);
  fill(128);
  
  //sets default lighting
  lights();
  //changes default ambient lighting to an orange hue
  ambientLight(253, 125, 1);

  //preserves previous cords/rotations
  pushMatrix();
  //shifts origin (0,0) to the specified location
  translate(width/2, height/2);
  
  //rotates on the Y axis 
  rotateY(map(sin(i), -1, 1, 0, PI));
  //draws 3D box at the origin
  box(100);
  //restores to the state that was saved
  popMatrix();
  
  pushMatrix();
  translate(200, 200);
  rotateY(map(cos(i), -1, 1, 0, TWO_PI));
  rect(0, 0, 100, 100);
  popMatrix();
  
  //increment for oscillation
  i += .01;
}