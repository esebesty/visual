void setup() {
  size(200, 200);
  noStroke();
}

void draw() {
  float x = mouseX;
  float y = mouseY;
  float ix = width - mouseX;
  float iy = height - mouseY;
  background(126);
  fill(255, 150);
  ellipse(x, height / 2, y, y);
  fill(0, 159);
  ellipse(ix, height / 2, iy, iy);
}

//void draw() {
//  frameRate(12);
//  println(pmouseX, pmouseY);
//}
