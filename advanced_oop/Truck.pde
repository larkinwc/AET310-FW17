class Truck extends Vehicle {
  
    Truck(color c) {
    super(c);
    }
    Truck(color c, int speedlimit) {
    super(c, speedlimit);
    }
   
   void display() {
     
    pushMatrix();
    translate(posX, height/2);
    rect(x+100, y, 100, 100);
    rect(x, y+50, 100, 50);
    ellipse(x+50, y+100, 50, 50);
    ellipse(x+150, y+100, 50, 50);
    popMatrix();
   }
}