Sine xSine;
Sine ySine;

Sine ampS;
Sine freS;

float amp,fre;
float x, y;

float t;
float size;
float q;

void setup() {
  frameRate(500);
  size(800, 500);
  xSine = new Sine(0, 0, 0,width/2); 
  ySine = new Sine(0, 0, 0, height/2);
  ampS = new Sine(0,0,0,0);
  freS = new Sine(0,0,0,0);
  noStroke();
  background(244);
  fill(244,0,0,100);
}

void draw() {
  //fill(244,1);
  //rect(0,0,width,height);
  
//  x = xSine.run(0.01,100);
//  y = ySine.run(0.1,70);
  size =  map(noise(t),0,1,100,244);
  if(frameCount % 90 ==0) fill(random(size),0,0,100);
  if(frameCount % (int)random(1,100) == 0){  q = 0.01;}
  else q = 0.1;
  //change these numbers
  amp = ampS.run(0.001,200);
  fre = freS.run(q,q);
  x = xSine.run(fre,amp);
  y = ySine.run(0.1,amp);
  //float s = ampS.run(0.001,2);
  ellipse(x, y, 2, 2);
  t+=0.01;
}

