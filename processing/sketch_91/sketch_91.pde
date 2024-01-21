void setup() {
  size(150, 150);
  background(255);
  smooth();
  noFill();
  stroke(0);
  beginShape();
  vertex(50, 75);
  bezierVertex(25, 25, 125, 25, 100, 75);
  endShape();
}
