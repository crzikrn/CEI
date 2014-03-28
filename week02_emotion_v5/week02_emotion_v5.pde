//Karam Byun
//EMOTION JEALOUSY v2
// Scale: Large, Density: Heavy (Color: High contrast of red)
// Rigidity: Hard, Energy Level: High -> becomes calm
// Number: Multiple, crowd
// Orientation: All Over, Fluid.

int size = 120;
int rows, cols;

Cell a;
Cell b;

Cell[] grids = new Cell[100];

int top, bottom;
PVector rgb;
PVector speed;
int var = 3;

void setup() {
  size(960, 480);
  top = 255;
  bottom = 0;


  cols =height/size;
  rows = width/size;

  rgb = new PVector(255, 0, 0);
  speed = new PVector(0.03, 0, 0);

  for (int i =0;i<grids.length;i++) {
    grids[i] = new Cell(rgb, speed);
  }

  println("UP/DOWN to CONTROL INTENSITY OF EMOTIONS ");
  println("LEFT/RIGHT to CONTROL INTENSITY OF LIKE/LOVE");

  println("");
}

void draw() {
  background(0);
  speed.mult(0.1);
  for (int row = 0; row < rows; row++) {
    float x = row*size;
    for (int col = 0; col < cols; col++) {
      float y = col*size;

      PVector aColor = grids[row].run();

      fill(aColor.x, aColor.y, aColor.z); 

      if (row % var==0) { 
        PVector bColor = grids[row].run(); 
        fill(bColor.x, bColor.y, bColor.z);
      }

      rect(x, y, size, size);
    }
  }
}

void keyPressed() {

  switch(keyCode) {
  case UP:
    size+=1;
    break;
  case DOWN:
    size-=1;
    break;
  case LEFT:
    var--;
    break;
  case RIGHT:
    var++;
    break;

  }
  var = constrain(var, 1, width);
  size = constrain(size, 1, width);
  reset();
  cols = height/size;
  rows = width/size;

  println("CELL SIZE: " + size);
  println("SKIP SIZE: " + var);
}

void reset() {
  rgb.mult(0);
  speed.mult(0);
}

