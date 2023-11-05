float angle = 0;

void setup() {
  size(100, 100);
  fill(0);
}

void draw() {
  background(204);
  if (keyPressed == true) {
    if ((key >= 32) && (key <= 126)) {
      angle = (key - 32) * 3;
    }
  }
  arc(50, 50, 66, 66, 0, radians(angle));
}
