String txt = "Vincent";
PFont myFont;
float m = 0, n = 2;

void setup(){
  size(720,720);
  textAlign(CENTER);
  myFont = createFont("Lot",128);
  frameRate(1);
}

void draw(){
  int t1 = 10 , t2 = 245;
  int x = width/2 , y = height/2 + 32;
  int c1 = floor(random(0,255)), c2 = floor(random(0,255)), c3 = floor(random(0,255));
  
  background(c1, c2, c3);
  
  for(int i=0;i<=width;i+=6){
    stroke(255-c1, 255-c2, 255-c3, t1);
    strokeWeight(3);
    line(i,0,i,noise(m)*height+50);
    m += 0.01;
    t1 += 2;
  }
  
  for(int i=0;i<=width;i+=6){
    stroke(255-c1, 255-c2, 255-c3, t2);
    strokeWeight(3);
    line(i,height,i,height-noise(n)*height-50);
    n += 0.01;
    t2 -= 2;
  }

  fill(c1, c2, c3);
  textSize(128);
  textFont(myFont);
  text(txt, x, y);
  
  //fill(255-c1, 255-c2, 255-c3, 150);
  //ellipse(370, 320, 10, 10);
}
