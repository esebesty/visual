String[] headlines = {
  "Processing downloads break downloading records.",
  "New study shows computer programming lowers cholesterol.",
};

PFont f;
float x;
int index = 0;

void setup() {
  size(400, 200);
  f = createFont("Arial", 16, true);
  x = width;
}

void draw() {
  background(255);
  fill(0);
  
  textFont(f, 16);
  textAlign(LEFT);
  text(headlines[index], x, 180);
  
  x = x - 3;
  
  float w = textWidth(headlines[index]);
  if (x < -w) {
    x = width;
    index = (index + 1) % headlines.length;
  }
}
