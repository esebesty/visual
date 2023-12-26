PFont f;
float r = 100;
float w = 40;
float h = 40;

void setup() {
  size(320, 320);
  smooth();
}

void draw() {
  background(255);
  
  translate(width / 2, height / 2);
  noFill();
  stroke(0);
  ellipse(0, 0, r * 2, r * 2);
  
  int totalBoxes = 10;
  float arclength = 0;
  
  for (int i = 0; i < totalBoxes; i++) {
    arclength += w / 2;
    float theta = arclength / r;
    
    pushMatrix();
    translate(r * cos(theta), r * sin(theta));
    rotate(theta);
    fill(0, 100);
    rectMode(CENTER);
    rect(0, 0, w, h);
    popMatrix();
    arclength += w / 2;
  }
}
