PFont f;

void setup() {
  size(200, 200);
  f = createFont("Arial", 16, true);
}

void draw() {
  background(255);
  textFont(f, 16);
  fill(0);
  text("Hello Strings!", 10, 100);
}
