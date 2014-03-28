float x;
float y;
float t1=0;
float t2=0;
float r = 100;
boolean tf = false;
float range;

void setup() {
  frameRate(60);
  size(400, 800);
  background(0);
  noStroke();
  fill(255, 100);

}

void draw() {
  translate(width/2, 0);

  if (tf == false) {
    x = wave(2, 100);
    y = t2;
    strokeWeight(2);
  } 
  else {
    
    x = wave(1, 50);
    y = t1;
    strokeWeight(0.3);
  }
  ellipse(x, y, 2, 2);
  t1+=range;
  t2+=0.5;
  if (y > height) {
    fill(random(244),0,0,random(50,180));
    translate(width/2, height/2);
    range = random(0.01,0.1);
    tf = true;
    t1 = 0;
  }
  println(t1);
  println(tf);
}

float wave(float f, float a) {
  return sin(f*t1)*a;
}

