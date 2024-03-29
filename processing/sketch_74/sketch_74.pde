Spot[] spots;

void setup() {
  // size(700, 100);
  fullScreen();
  int numSpots = 70;
  int dia = width / numSpots;
  spots = new Spot[numSpots];
  for (int i = 0; i < spots.length; i++) {
    float x = dia / 2 + i * dia;
    float rate = random(0.1, 2.0);
    spots[i] = new Spot(x, 50, dia, rate);
  }
  noStroke();
}

void draw() {
  fill(0, 12);
  rect(0, 0, width, height);
  fill(255);
  for (int i = 0; i < spots.length; i++) {
    spots[i].move();
    spots[i].display();
  }
}

class Spot {
  float x, y;
  float diameter;
  float speed;
  int direction = 1;
  
  Spot(float xpos, float ypos, float dia, float sp) {
    x = xpos;
    y = ypos;
    diameter = dia;
    speed = sp;
  }
  
  void move() {
    y += (speed * direction);
    if ((y > (height - diameter / 2)) || (y < diameter / 2)) {
      direction *= -1;
    }
  }
  
  void display() {
    ellipse(x, y, diameter, diameter);
  }
}
