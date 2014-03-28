//Karam Byun
//EMOTION JEALOUSY
//still working around.

int size = 96;
int rows, cols;
Cell a;
Cell b;
int top, bottom;
PVector rgb;
PVector speed;
int var = 2;

void setup() {
  size(960, 600);
  top = 255;
  bottom = 0;


  cols =height/size;
  rows = width/size;
  
  rgb = new PVector(random(255), 0, 0);
  speed = new PVector(0.05, 0, 0);
  a = new Cell(rgb, speed);
  rgb.mult(0.5);
  speed.mult(0.7);
  b = new Cell(rgb, speed);
  println("UP/DOWN to CONTROL INTENSITY OF EMOTIONS ");
  println("LEFT/RIGHT to CONTROL INTENSITY OF LIKE/LOVE");
  
  println("");
}

void draw() {
  background(0);

  for (int row = 0; row < rows; row++) {
    float x = row*size;
    for (int col = 0; col < cols; col++) {
      float y = col*size;
      //rgb.mult(random(0.5));
      //speed.mult(random(0.1));
      PVector aColor = a.run();
      fill(aColor.x, aColor.y, aColor.z); 


      if (row % var==0) { 
        PVector bColor = b.run(); 
        fill(bColor.x, bColor.y, bColor.z);
      }
      //      if (row%10==0) { 
      //        PVector bColor = b.run(); 
      //        fill(200);
      //      }
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
  cols = height/size;
  rows = width/size;

  println("CELL SIZE: " + size);
  println("SKIP SIZE: " + var);
}

