PFont hack;

void setup() {
  size(100, 100);
  hack = loadFont("Hack-Regular-32.vlw");
  textFont(hack);
  fill(0);
}

void draw() {
  background(204);
  textSize(32);
  text("A", 20, 20);
  textSize(96);
  text("A", 20, 90);
}
