float x, y;
float t;
float r = 100;

void setup() {
  size(400, 400);
  background(0);
  noStroke();
}

void draw() {

  //x = cos(t)*r+width/2;
  //y = sin(t)*r+height/2;
  translate(width/2,height/2);
  x = wave(1.2,150);
  y = wave(1,100);
  ellipse(x, y, r/10, r/10);
  t+=0.01;
}

float wave(float f, float a){
 return sin(f*t)*a; 
}
