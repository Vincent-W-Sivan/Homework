Boolean Curvebrush = false;
Boolean Trianbrush = false;
Boolean Re = false;
float speed = 0;
float speedrate = 0.07;
int rx = 20 , ry1 = 20 , rh = 30 , rw = 90;
int intdist = 20;
int ry2 = ry1 + rh + intdist, ry3 = ry2 + rh + intdist;
String txt1 = "Curve", txt2 = "Triangle", txt3 = "Reset";

void setup() {
  background(0);
  size(1080, 720);
  noStroke();
  textAlign(CENTER);
}

void draw(){
  
  if((mouseX > rx) && (mouseX < rx + rw) && (mouseY > ry1) && (mouseY < ry1 + rh) && mousePressed == true) {
    fill(#8CF7ED);
    Curvebrush = true;
    Trianbrush = false;
    Re = false;
  } 
  else {
    fill(#5FA59E);
  }
  rect(rx, ry1, rw, rh);
  
  if((mouseX > rx) && (mouseX < rx + rw) && (mouseY > ry2) && (mouseY < ry2 + rh) && mousePressed == true) {
    fill(#FFB11F);
    Trianbrush = true;
    Curvebrush = false;
    Re = false;
  } 
  else {
    fill(#B47F1B);
  }
  rect(rx, ry2, rw, rh);
  
  if((mouseX > rx) && (mouseX < rx + rw) && (mouseY > ry3) && (mouseY < ry3 + rh) && mousePressed == true) {
    fill(200);
    Re = true;
    Curvebrush = false;
    Trianbrush = false;
  } 
  else {
    fill(100);
  }
  rect(rx, ry3, rw, rh);
  
  fill(255);
  textSize(20);
  text(txt1, rx + rw/2, ry1+rh-7);
  
  fill(255);
  textSize(20);
  text(txt2, rx + rw/2, ry2+rh-7);
  
  fill(255);
  textSize(20);
  text(txt3, rx + rw/2, ry3+rh-7);
  
  if(((mouseX < rx) || (mouseX > rx + rw) || (mouseY < ry1) || (mouseY > ry1 + rh)) && Curvebrush == true && mousePressed == true) {
    Curvinglines();
  }
  
  if(((mouseX < rx) || (mouseX > rx + rw) || (mouseY < ry2) || (mouseY > ry2 + rh)) && Trianbrush == true && mousePressed == true) {
    Triangles();
  }
  
  if(Re == true && mousePressed == true) {
    Reset();
  }
}
