void setup(){
  size(720,720);
  background(255);
  frameRate(5);
  for(int i=0;i<17;i=i+int(floor(random(1,8)))){
    stroke(0);
    strokeWeight(4);
    line(0,40*(i+1),720,40*(i+1));
  }
  for(int j=0;j<17;j=j+int(floor(random(1,8)))){
    stroke(0);
    strokeWeight(4);
    line(40*(j+1),0,40*(j+1),720);
    }
}

void draw(){
  shape();
}

void shape(){
  stroke(0);
  strokeWeight(4);
  fill(random(0,255));
  rect(40*floor(random(-3,18)),40*floor(random(-3,18)),40*floor(random(4,10)),40*floor(random(4,10)));
}
