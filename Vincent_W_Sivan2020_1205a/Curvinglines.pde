void Curvinglines(){
  int num = 3;
  float index = map(mouseX, 0, width, -1000, 1000);
  
  float[] x = new float[num];
  float[] y = new float[num];
  for(int i = 0; i < num; i++){
    x[i] = mouseX + i * (width/2 - mouseX) / (num - 1);
    y[i] = mouseY + i * (height - mouseY) / (num - 1);
  }
  
  float cl = map(mouseX, 0, width, 100, 200);
  
  colorMode(HSB);
  noFill();
  stroke(cl, 100, 200);
  strokeWeight(0.5);
  
  beginShape();
  vertex(x[0], y[0]);
  if(mouseX <= width/2){
    for(int i = 0; i < num-1; i++){
      bezierVertex(x[i] + index, y[i] + index, x[i+1] - index, y[i+1] - index, x[i+1], y[i+1]);
    }
  }
  else{
    for(int i = 0; i < num-1; i++){
      bezierVertex(x[i] - index, y[i] + index, x[i+1] + index, y[i+1] - index, x[i+1], y[i+1]);
    }
  }
  endShape();
}
