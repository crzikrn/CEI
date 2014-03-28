Wave xWave = new Wave(PI,3.5,100); 
Wave yWave = new Wave(0,3.5,100);
float x,y;

void setup() {
  size(400, 400);
  background(0);
  //RnoStroke();
}

void draw() {

  //x = cos(t)*r+width/2;
  //y = sin(t)*r+height/2;
  translate(width/2, height/2);
  x = xWave.wave();
  y = yWave.wave();
  
  ellipse(x,y,10,10);
 
}

