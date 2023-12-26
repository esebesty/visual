PFont f;
String message = "click mouse to shake it up";

Letter[] letters;

void setup() {
  size(260, 200);
  f = createFont("Arial", 20, true);
  textFont(f);
  
  letters = new Letter[message.length()];
  int x = 16;
  for (int i = 0; i < message.length(); i++) {
    letters[i] = new Letter(x, 100, message.charAt(i));
    x += textWidth(message.charAt(i));
  }
}

void draw() {
  background(255);
  for (int i = 0; i < letters.length; i++) {
    letters[i].display();
    
    if (mousePressed) {
      letters[i].shake();
    } else {
      letters[i].home();
    }
  }
}

class Letter {
  char letter;
  float homex, homey;
  float x, y;
  
  Letter (float x_, float y_, char letter_) {
    homex = x = x_;
    homey = y = y_;
    letter = letter_;
  }
  
  void display() {
    fill(0);
    textAlign(LEFT);
    text(letter, x, y);
  }
  
  void shake() {
    x += random(-2, 2);
    y += random(-2, 2);
  }
  
  void home() {
    x = homex;
    y = homey;
  }
}
