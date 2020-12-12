class Particle3{
  PVector pos = new PVector(mouseX, mouseY);;
  PVector ro = new PVector(0, 0);
  float angle;
  float dAngle;
  float posStep;
  float r;
  
  Particle3(){
    angle = random(TWO_PI);
    posStep = 1;
    dAngle = 1;
    r = 10;
  }
  
  void run(){
    show();
    rolling();
  }
  
  void rolling(){
    angle += dAngle;
    PVector ro = new PVector(posStep*cos(radians(angle)), posStep*sin(radians(angle)));
    pos.add(ro);
    
    if(pos.x > width) pos.x = 0;
    if(pos.x < 0) pos.x = width;
    if(pos.y > height) pos.y = 0;
    if(pos.y < 0) pos.y = height;
  }
  
  void show(){
    fill(255);
    noStroke();
    ellipse(pos.x, pos.y, r, r);
  }
}
