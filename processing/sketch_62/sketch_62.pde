PFont f;
String message = "this text is spinning";
float theta;

void setup() {
  size(200, 200);
  f = createFont("Arial", 20, true);
}

void draw() {
  background(255);
  fill(0);
  textFont(f);
  translate(width / 2, height / 2);
  rotate(theta);
  textAlign(CENTER);
  text(message, 0, 0);
  theta += 0.02;
}
