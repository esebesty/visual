String letters = "";

void setup() {
  size(100, 100);
  stroke(255);
  fill(0);
  textSize(16);
}

void draw() {
  background(204);
  float cursorPosition = textWidth(letters);
  line(cursorPosition, 0, cursorPosition, 100);
  text(letters, 0, 50);
}

void keyPressed() {
  if (key == BACKSPACE) {
    if (letters.length() > 0) {
      letters = letters.substring(0, letters.length() - 1);
    }
  } else if (textWidth(letters + key) < width) {
    letters = letters + key;
  }
}
