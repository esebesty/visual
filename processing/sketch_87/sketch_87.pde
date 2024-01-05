void setup() {
  size(300, 200);
  background(255);
  smooth();
  
  rectMode(CENTER);
  stroke(128);
  rect(35, 35, 50, 50);
  rect(105, 35, 50, 50);
  rect(175, 35, 50, 50);
  rect(105, 105, 100, 50);
  
  stroke(0);
  arc(35, 35, 50, 50, 0, PI / 2.0);
  arc(105, 35, 50, 50, -PI, 0);
  arc(175, 35, 50, 50, -PI / 6, PI / 6);
  arc(105, 105, 100, 50, PI / 2, 3 * PI / 2);
}
