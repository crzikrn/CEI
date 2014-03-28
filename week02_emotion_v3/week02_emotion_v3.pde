int size = 120;
int rows, cols;
Cell a;
Cell b;
int top, bottom;
PVector rgb;
PVector speed;

void setup() {
  size(600, 600);
  top = 255;
  bottom = 0;
  
  cols = width/size;
  rows = height/size;
  rgb = new PVector(random(255), 0, 0);
  speed = new PVector(0.1, 0, 0);
  a = new Cell(rgb, speed);
  rgb.mult(0.5);
  speed.mult(0.1);
  b = new Cell(rgb, speed);
}

void draw() {
  background(0);

  for (int row = 0; row < rows; row++) {
    float x = row*size;
    for (int col = 0; col < cols; col++) {
      float y = col*size;
      rgb.mult(random(0.5));
      speed.mult(random(0.1));
      PVector aColor = a.run();
      fill(aColor.x, aColor.y, aColor.z); 
      PVector bColor = b.run();
   
      if(row%2==0)  fill(bColor.x, bColor.y, bColor.z);
      rect(x, y, size, size);
    }
  }



    
 
}

