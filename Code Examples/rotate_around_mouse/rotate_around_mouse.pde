void setup() {
  size(500, 500);
}

float theta = 0;

void draw() {
  background(100);
  pushMatrix();
  translate(mouseX, mouseY);
  rotate(theta);
  triangle(0, 0, -50, 0, 0, 50);
  popMatrix();
  theta += .1;
}
