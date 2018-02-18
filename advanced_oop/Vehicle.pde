class Vehicle {
  
  protected color c;
  protected color pc;
  protected int speedlimit = 60;
  protected float speed = 0;
  protected int x = 0;
  protected int y = 0;
  protected float posX;
  
  Vehicle(color c) {
    this.c = c;
    pc = c;
  }
  
  Vehicle(color c, int speedlimit) {
    this.c = c;
    this.speedlimit = speedlimit;

  }
  
  void display() {
    text("this is not right", width/2, height/2);
    }
    
  void drive() {
    posX += speed/10; //<>//
  }
  
  //move car
  void place() {
    posX = -200;
  }
  
  //accelerate speed
  void accel(float accel) {
    speed += accel;
    speed = constrain(speed, 0, speedlimit);
  }
  void brake() {
   speed = 0;
  }
  

  float getSpeed() {
    return speed;
    
  }
  float getPosX() {
    return posX;
  }
}