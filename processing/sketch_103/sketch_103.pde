PShape rectangle;

void setup() {
  size(640, 360, P2D);
  rectangle = createShape(RECT, 0, 0, 100, 50);
  rectangle.setStroke(color(255));
  rectangle.setStrokeWeight(4);
  rectangle.setFill(color(127));
}

void draw() {
  background(51);
  translate(mouseX, mouseY);
  rectangle.setFill(color(map(mouseX, 0, width, 0, 255)));
  shape(rectangle);
}
