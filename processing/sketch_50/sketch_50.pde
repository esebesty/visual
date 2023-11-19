PFont hack;

void setup() {
  size(100, 100);
  hack = loadFont("Hack-Regular-32.vlw");
  textFont(hack);
  fill(0);
}

void draw() {
  background(204);
  text("LAX", 0, 40);
  text("LHR", 0, 70);
  text("TXL", 0, 100);
}
