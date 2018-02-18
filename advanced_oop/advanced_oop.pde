// AET 310 Creative Coding Fall 2017
// Larkin Williams-Capone
// Demo #10

Sedan pinto;

void setup() {
  size(1000,1000);
  pinto = new Sedan(color(102, 10, 190), 1000);
}


void draw() {
  background(0);
  pinto.display();
  pinto.drive();
  if(pinto.getPosX() >= width + 200) {
    pinto.place();
  }
  
  fill(255);
  textSize(50);
  text("Current speed: " + pinto.getSpeed(), 100, 100);
}

void mousePressed() {
  pinto.brake();
}

void keyPressed() {
  pinto.accel(.4);
}