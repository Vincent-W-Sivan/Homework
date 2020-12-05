void Triangles(){  
  frameRate(20);
  translate(mouseX, mouseY);
  float cl1 = map(mouseX, 0, width, 0, 50);
  float x1 = 0,
        x2 = mouseX,
        x3 = -mouseX,
        y1 = 0,
        y2 = mouseY,
        y3 = -2*mouseY;

  
  colorMode(HSB);
  noStroke();
  fill(cl1, 200, 200, 50);
  triangle(x1, y1, x2, y2, x3, y3);
}
