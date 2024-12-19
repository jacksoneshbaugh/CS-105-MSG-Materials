int num = 5;

void setup() {
  
  size(500, 500);
  background(100);
  
  strokeWeight(15);
  line(50, height/2, width - 50, height/2);
  
  strokeWeight(1);
  float incr = (width - 100) / num;
  
  float currX = 50;
  for(int i = 0; i <= num; i++) {
    circle(currX, height/2, 20);
    currX += incr;
  }
 
}
