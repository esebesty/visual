void setup() {
  size(100, 100);
}

void draw() {
  background(204);
  if (mousePressed == true) {
    cursor(HAND);
  } else {
    cursor(CROSS);
  }
  line(mouseX, 0, mouseX, height);
  line(0, mouseY, width, mouseY);
}
