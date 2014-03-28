float x;
float y;
float t1=0;
float t2=0;
float r = 100;
boolean tf = false;

void setup() {
  frameRate(60);
  size(400, 800);
  background(0);
  noStroke();
  fill(255, 10);

}

void draw() {
  translate(width/2, 0);

  if (tf == false) {
    x = wave(2, 100);
    y = t2;
    strokeWeight(2);
  } 
  else {
    fill(244,100,0,10);
    x = wave(1, 50);
    y = t1;
    strokeWeight(0.3);
  }
  ellipse(x, y, 10, 10);
  t1+=random(0.1,0.5);
  t2+=0.5;
  if (y > height) {
    translate(width/2, height/2);
    tf = true;
    t1 = 0;
  }
  println(t1);
  println(tf);
}

float wave(float f, float a) {
  return sin(f*t1)*a;
}

