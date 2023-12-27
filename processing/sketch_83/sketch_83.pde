PImage img;

void setup() {
  size(1000, 750);
  loadPixels();
  img = loadImage("galagonya_scaled.jpg");
}

void draw() {

  for (int x = 1; x < width; x++) {
    for (int y = 1; y < height; y++) {
      int loc = x + y * img.width;
      color pix = img.pixels[loc];
      
      int leftLoc = (x - 1) + y * img.width;
      color leftPix = img.pixels[leftLoc];
      
      float diff = abs(brightness(pix) - brightness(leftPix));
      pixels[loc] = color(diff);
    }
  }
  
  updatePixels();
}
