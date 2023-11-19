PFont aep;

void setup() {
  size(100, 100);
  aep = createFont("AcademyEngravedLetPlain", 32);
  textFont(aep);
  fill(0);
}

void draw() {
  background(204);
  text("LAX", 0, 40);
  text("LHR", 0, 70);
  text("TXL", 0, 100);
}
