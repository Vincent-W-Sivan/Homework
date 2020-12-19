ArrayList particles1,
          particles2,
          particles3;

void setup(){
  size(720,720);
  frameRate(60);
  background(0);
  particles1 = new ArrayList();
  particles2 = new ArrayList();
  particles3 = new ArrayList();
}

void draw(){
  fill(0, 10);
  rect(0, 0, width, height);
  
  for(int i=0; i < particles1.size(); i++){
    Particle1 single = (Particle1)particles1.get(i);
    single.run();
  }
  
  for(int i=0; i < particles2.size(); i++){
    Particle2 single = (Particle2)particles2.get(i);
    single.run();
  }
  
  for(int i=0; i < particles3.size(); i++){
    Particle3 single = (Particle3)particles3.get(i);
    single.run();
  }
  
  //saveFrame();
}

void mousePressed(){
  if(mouseButton == LEFT){
    particles1.add(new Particle1(new PVector(mouseX, mouseY), 1, 0, 1, 3));
  }
  else if(mouseButton == RIGHT){
    particles2.add(new Particle2(new PVector(mouseX, mouseY), 1, 0, 1, 3));
  }
  else if(mouseButton == CENTER){
    particles3.add(new Particle3(new PVector(mouseX, mouseY), 1, 0, 1, 3, 180));
  }
}

void keyPressed(){
  reset();
}

void reset(){
  if(key == ' ' || key == 'r'){
    particles1 = new ArrayList();
    particles2 = new ArrayList();
    particles3 = new ArrayList();
  }
}
