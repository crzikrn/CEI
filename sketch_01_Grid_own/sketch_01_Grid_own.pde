int cell = 20;
int rows, cols;

void setup() {
  size(400, 400);
  cols = width/cell;
  rows = height/cell;
}

void draw() {
  background(0);
  for (int col = 0; col <cols;col++) {
    //x,y location is the location multiplied by the size of the cell.
    float x = col*cell;
    for (int row = 0; row <rows; row++) {
      float y = row*cell;
      rect(x, y, cell, cell);
    }
  }
}

void keyPressed() {
  switch(keyCode) {
  case UP:
    cell++;
    break;
    case DOWN:
    cell--;
    break;
  }
}

