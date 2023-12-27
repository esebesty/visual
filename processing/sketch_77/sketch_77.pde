size(200, 200);

loadPixels();

for (int i = 0; i < pixels.length; i++) {
  float rand = random(255);
  color c = color(rand);
  pixels[i] = c;
}

updatePixels();
