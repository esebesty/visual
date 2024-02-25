final int ROBOT_X = 50;
final int ROBOT_Y = 50;

final int MIDPOINT_X = 39;
final int LEFT_PIVOT_X = 12;
final int RIGHT_PIVOT_X = 66;
final int PIVOT_Y = 32;

float leftArmAngle = 0.0;
float rightArmAngle = 0.0;

void setup() {
  size(200, 200);
  smooth();
  frameRate(30);
}

void draw() {
  float mX;
  float mY;
  
  background(255);
  pushMatrix();
  translate(ROBOT_X, ROBOT_Y);
  if (mousePressed) {
    mX = mouseX - ROBOT_X;
    mY = mouseY - ROBOT_Y;
    if (mX < MIDPOINT_X) {
      leftArmAngle = atan2(mY - PIVOT_Y, mX - LEFT_PIVOT_X) - HALF_PI;
    } else {
      rightArmAngle = atan2(mY - PIVOT_Y, mX - RIGHT_PIVOT_X) - HALF_PI;
    }
  }
  drawRobot();
  
  popMatrix();
}

void drawRobot() {
  noStroke();
  fill(38, 38, 200);
  rect(20, 0, 38, 30);
  rect(14, 32, 50, 50);
  drawLeftArm();
  drawRightArm();
  rect(22, 84, 16, 50);
  rect(40, 84, 16, 50);
  
  fill(222, 222, 249);
  ellipse(30, 12, 12, 12);
  ellipse(47, 12, 12, 12);
}

void drawLeftArm() {
  pushMatrix();
  translate(12, 32);
  rotate(leftArmAngle);
  rect(-12, 0, 12, 37);
  popMatrix();
}

void drawRightArm() {
  pushMatrix();
  translate(66, 32);
  rotate(rightArmAngle);
  rect(0, 0, 12, 37);
  popMatrix();
}
