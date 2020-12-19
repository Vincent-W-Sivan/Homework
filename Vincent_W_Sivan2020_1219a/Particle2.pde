class Particle2{
  PVector pos;
  PVector ro;
  float angle;
  float dAngle;
  float posStep;
  float r;
  
  int hierachy = 5;
  float stagespeed = 0.6;
  float rspeed = 0.8;
  float colorspeed = 0.6;
  float amplititude = 2;
  float term = 1;
  
  Particle2(PVector pos, float posStep, float angle, float dAngle, float r){
    
    this.pos = pos;
    this.posStep = posStep;
    this.angle = angle;
    this.dAngle = dAngle;
    this.r = r;
    
  }
  
  void run(){
    show();
    swingfission();
  }
  
  void swingfission(){
    
    angle += dAngle;
    PVector ro = new PVector(amplititude * posStep*sin(radians(angle)), term * dAngle);
    pos.add(ro);
    
    if(angle % 180 == 0){ 
      
      if(posStep > pow(stagespeed, hierachy)){  
        
        PVector update =  pos.get();
        particles2.add(new Particle2(update, posStep * stagespeed, angle, -1 * dAngle, r * rspeed)); 
      
      }
      
    }
    
    if(pos.x > width) pos.x = 0;
    if(pos.x < 0) pos.x = width;
    if(pos.y > height) pos.y = 0;
    if(pos.y < 0) pos.y = height;
    
  }
  
  void show(){
    
    color from = color(#1FFFF2);
    color to = color(#FF841F);
    color cl = lerpColor(from, to, map(pos.y, 0, width, 0, 1));
    fill(cl);
    noStroke();
    ellipse(pos.x, pos.y, r, r);
    
  }
  
}
