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
  size(1280, 720);
  xSine = new Sine(0, 0, 0,width/2); 
  ySine = new Sine(0, 0, 0, height/2);
  ampS = new Sine(0,0,0,0);
  freS = new Sine(0,0,0,0);
  noStroke();
  background(244);
  fill(244,0,0,100);
}

void draw() {
  fill(244,10);
  rect(0,0,width,height);
  fill(0);
//  x = xSine.run(0.01,100);
//  y = ySine.run(0.1,70);
  size =  map(noise(t),0,1,10,244);
  //color of dots 
  if(frameCount % (int)random(1,90) == 0 ) fill(size,0,0,200);
  if(frameCount % (int)random(1,100) == 0){  q = 0.01;}
  else q = 0.1;
  //change these numbers
  amp = ampS.run(0.001,250);
  fre = freS.run(q,q);
  x = xSine.run(fre,amp);
  y = ySine.run(0.1,amp);
  //float s = ampS.run(0.001,2);
  float sz = random(5);
  ellipse(x, y,sz, sz);
  t+=1;
}

