int size = 120;
int rows, cols;
Cell a;
//Cell b;
int top, bottom;
PVector rgb;
PVector speed;

void setup() {
  size(600, 600);
  top = 255;
  bottom = 0;

  cols = width/size;
  rows = height/size;
  
  a = new Cell(rgb, speed);
  rgb = new PVector(255, 10, 10);
  speed = new PVector(0.1, .10, 0.1);
  //b = new Cell(rgb, speed);
}

void draw() {
  background(0);

  for (int row = 0; row < rows; row++) {
    float x = row*size;
    for (int col = 0; col < cols; col++) {
      float y = col*size;

      PVector aColor = a.run();
      fill(aColor.x, aColor.y, aColor.z); 
      //PVector bColor = b.run();
      //fill(bColor.x, bColor.y, bColor.z);
      if(row%2 == 0) fill(0);
      rect(x, y, size, size);
    }
  }




  //rect(width/2, 0, width/2, height);
}

