class Particle3{
  PVector pos;
  PVector ro;
  float posStep;
  float angle;
  float dAngle;
  float r;
  float step;
  float cl;

  int hierachy = 5;
  float stagespeed = 0.8;
  float rspeed = 0.8;
  float colorspeed = 30;
  
  Particle3(PVector pos, float posStep, float angle, float dAngle, float r, float cl){
    
    step = 1;
    this.pos = pos;
    this.posStep = posStep;
    this.angle = angle;
    this.dAngle = dAngle;
    this.r = r;
    this.cl = cl;
    
  }
  
  
  void run(){
    
    show();
    rollingfission();
    //attract();
    
  }
  
  //void attract(){
    
  //  for(int i = 0; i < particles3.size(); i++){
  //    Particle3 other = (Particle3)particles3.get(i);
  //    PVector direction = PVector.sub(pos, other.pos);
  //    float distance = direction.mag();
      
  //    if (distance > 1){
  //      direction.normalize();
  //      direction.mult(-1 / direction.mag());
  //    }
  //    if(distance < 1 && distance >0){
  //      direction.normalize();
  //      direction.mult(1 / direction.mag());
  //      return;
  //    }
      
  //    pos.add(direction);
  //    direction = new PVector(0, 0);
  //  }
  
  //}
  
  void rollingfission(){
    
    angle += dAngle;
    PVector ro = new PVector( posStep*cos(radians(angle)), posStep*sin(radians(angle)) );
    pos.add(ro);
    
    if(angle % 60 == 0){ 
      
      if(posStep > pow(stagespeed, hierachy)){  
        
        PVector update =  pos.get();//这一步很关键，需要新建一个向量存储粒子分形时的位置（这里找了很多案例探索了很久才终于成功555）
        particles3.add(new Particle3(update, posStep * stagespeed, angle, -1 * dAngle, r * rspeed, cl - colorspeed)); //这一部分所有提供变化的代码函数都只能写在递归式中，否则变化也会附加到初始的粒子中
      
      }
      
    }
    
    if(pos.x > width) pos.x = 0;
    if(pos.x < 0) pos.x = width;
    if(pos.y > height) pos.y = 0;
    if(pos.y < 0) pos.y = height;
    
  }
  
  void show(){
    
    colorMode(HSB, 360, 100, 100);
    fill(cl, 100, 100);
    noStroke();
    ellipse(pos.x, pos.y, r, r);
  }
  
}
