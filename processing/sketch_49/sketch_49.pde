PFont hack, sourceLight;

void setup() {
  size(100, 100);
  hack = createFont("Hack", 24);
  sourceLight = createFont("SourceCodePro-Light.ttf", 34);
  fill(0);
}

void draw() {
  background(204);
  textFont(hack);
  text("LAX0", 0, 40);
  textFont(sourceLight);
  text("LHR0", 0, 70);
  textFont(hack);
  text("TXL0", 0, 100);
}
