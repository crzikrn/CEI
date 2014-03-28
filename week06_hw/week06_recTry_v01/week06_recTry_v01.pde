Sine xSine;
Sine ySine;

Sine ampS;
Sine freS;

float amp,fre;

float x, y;

void setup() {
  frameRate(500);
  size(800, 500);
  xSine = new Sine(0, 0, 0,width/2); 
  ySine = new Sine(0, 0, 0, height/2);
  ampS = new Sine(0,0,0,0);
  freS = new Sine(0,0,0,0);
  noStroke();
  background(0);
  fill(244,0,0,100);
}

void draw() {
//  x = xSine.run(0.01,100);
//  y = ySine.run(0.1,70);
  
  if(frameCount % 90 ==0) fill(random(244),50,0);
  //change these numbers
  amp = ampS.run(0.001,300);
  fre = freS.run(0.1,0.1);
  x = xSine.run(fre,amp);
  y = ySine.run(0.1,amp);
  s = amp;
  ellipse(x, y, 2, 2);
}

