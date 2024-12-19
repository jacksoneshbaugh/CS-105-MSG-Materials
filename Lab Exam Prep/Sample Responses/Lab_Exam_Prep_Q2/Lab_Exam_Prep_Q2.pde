void setup() {
  size(500, 500);
  
  // 1. Read in checkerboard.txt
  
  String[] data = loadStrings("checkerboard.txt");
  
  // 2. Determine number of boxes
  // data[0] has the number of boxes.
  
  int numBoxes = int(data[0]);
  
  // 3. Determine w/h of the board in boxes
  // both width and height are the square root of numBoxes,
  // according to the problem.

  float boardWidth = sqrt(numBoxes);
  
  // 4. Determine w/h of each box
  
  // box width = screen width divided by board width
  
  float boxWidth = width / boardWidth;
  
  // box height = screen height divided by board height
  // boardWidth == height.
  
  float boxHeight = height / boardWidth;
  
  // 5. Draw the boxes
  
  // keep track of the line we're on in
  // the data array. Start at 1 to avoid the first
  // line, which doesn't contain color data.
  int currLine = 1;

  // iterate through a grid
  for(int i = 0; i < boardWidth; i++) {
    
    // y will start at 0, then increase by boxHeight
    // each time.
    float y = i * boxHeight;
    
    for(int j = 0; j < boardWidth; j++) {
      
      // x will start at 0, and increase by boxWidth
      // each time.
      
      float x = j * boxWidth;
      
      // get the color of the box
      int[] colorData = int(splitTokens(data[currLine], ","));
      color c = color(colorData[0], colorData[1], colorData[2]);
      
      fill(c);
      
      // Draw the box
      
      rect(x, y, boxWidth, boxHeight);
      
      // increment currLine, so we check the next index.
      currLine++;
    }
    
  }
  
}
