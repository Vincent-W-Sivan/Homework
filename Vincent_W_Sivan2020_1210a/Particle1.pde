class Particle1{
  PVector pos;
  float angle;
  float dAngle;
  float posStep;
  float r;
  
  Particle1(){
    pos = new PVector(mouseX, mouseY);
    angle = random(TWO_PI);
    posStep = 1;
    dAngle = 1;
    r = 3;
  }
  
  void run(){
    show();
    swing();
  }
  
  void swing(){
    angle += dAngle;
    pos.x += 1; 
    pos.y += 2 * posStep*sin(radians(angle));
    
    if(pos.x > width) pos.x = 0;
    if(pos.x < 0) pos.x = width;
    if(pos.y > height) pos.y = 0;
    if(pos.y < 0) pos.y = height;
  }
  
  void show(){
    float cl = map(pos.x, 0, width, 100, 200);
    colorMode(HSB, 360, 100, 100);
    fill(cl, 100, 100);
    noStroke();
    ellipse(pos.x, pos.y, r, r);
  }
}
