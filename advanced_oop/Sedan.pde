class Sedan extends Vehicle {
  
  Sedan(color c) {
    super(c);
  }
  Sedan(color c, int speedlimit) {
    super(c, speedlimit);
  }
  
  void display() {
        fill(c);
        pushMatrix();
        translate(posX, height/2);
        rect(x, y, 200, 100);
        ellipse(x+50, y+100, 50, 50);
        ellipse(x+150, y+100, 50, 50);
        popMatrix();
  }
  
}