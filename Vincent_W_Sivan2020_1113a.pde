void setup(){
  size(720,720);
  background(255,255,255);
  frameRate(15);
}

void draw(){
  for(int i=0; i<18; i++){
    for(int j=0; j<18; j++){
      fill(mouseX/5+mouseY/5,5*i+120,5*j+120);
      rect(40*j,40*i,40,40);
    }
  }

  noStroke();
    if((mouseX+mouseY)>720){
      fill(#FFE200,(1440-mouseX-mouseY)/4);
    }
    else{
      fill(#FFE200,(mouseX+mouseY)/4);
    }
  arc(360,360,240,240,PI*0.125,PI*1.875);
  
  noStroke();
    if((mouseX+mouseY)>720){
      fill(0,(1440-mouseX-mouseY)/4);
    }
    else{
      fill(0,(mouseX+mouseY)/4);
    }
  ellipse(400,310,20,20);
  
  for(float m=0; m<37; m++){
    line(40*m+40,-80,-80,40*m+40);
    if((mouseX+mouseY)>720){
      stroke(255,3*(49-m)+100);
      strokeWeight(m*(mouseX+mouseY-720)/1000);
    }
    else{
      stroke(255,3*m+100);
      strokeWeight((49-m)*(720-mouseX-mouseY)/1000);
    }
  }
  
    
  for(float n=0; n<38; n++){
    line(40*n-80,0,40*n-80,720);
    line(0,40*n-80,720,40*n-80);
    if((mouseX+mouseY)>720){
      stroke(255,50);
      strokeWeight((mouseX+mouseY-720)/30);
    }
    else{
      stroke(255,50);
      strokeWeight((720-mouseX-mouseY)/30);
    }
    }
  
}
