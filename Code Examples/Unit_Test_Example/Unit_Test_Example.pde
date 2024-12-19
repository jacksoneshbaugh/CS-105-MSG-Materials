void setup() {
  testDoubleOrNothing1();
  testDoubleOrNothing2();
}

void testDoubleOrNothing1() {
  
  int input = 4;
  int expected = 8;
  
  int actual = doubleOrNothing(input);
  
  if(expected == actual) {
    println("Test 1 passed! doubleOrNothing(4) -> 8");
  } else {
    println("Test 1 failed! doubleOrNothing(4) -> " + actual + " (expected: " + expected + ")");
  }
  
}

void testDoubleOrNothing2() {
  
  int input = 3;
  int expected = 0;
  
  int actual = doubleOrNothing(input);
  
  if(expected == actual) {
    println("Test 2 passed! doubleOrNothing(3) -> 0");
  } else {
    println("Test 2 failed! doubleOrNothing(3) -> " + actual + " (expected: " + expected + ")");
  }
  
}

int doubleOrNothing(int x) {
  
  if(x % 4 == 0) {
    return 2 * x;
  }
  
  return 0;
  
}
