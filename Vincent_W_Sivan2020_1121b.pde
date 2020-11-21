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
  int x = 40*floor(random(-3,18));
  int y = 40*floor(random(-3,18));
  int l1 = 40*floor(random(4,10));
  int w1 = 40*floor(random(4,10));
  float h=random(15,45), s=random(75,100), b=random(75,100);
  colorMode(HSB, 360, 100, 100);
  fill(h, s, b);
  shape1( x, y, l1, w1);
  
  int o = 40*floor(random(-3,18));
  int p = 40*floor(random(-3,18));
  int l2 = 40*floor(random(4,10));
  int w2 = 40*floor(random(4,10));
  fill(h+180, 130-s, 120-b);
  shape1( o, p, l2, w2);
  
  int m = 40*floor(random(-3,18));
  int n = 40*floor(random(-3,18));
  int l3 = 40*floor(random(3,8));
  int w3 = 40*floor(random(5,7));
  shape2( m, n, l3, w3);
}

void shape1(int posX, int posY, int sideLength1, int sideLength2){
  stroke(0);
  strokeWeight(4);
  rect(posX, posY, sideLength1, sideLength2);
}

void shape2(int posX, int posY, int sideLength1, int sideLength2){
  stroke(0);
  strokeWeight(4);
  fill(360);
  rect(posX, posY, sideLength1, sideLength2);
}
