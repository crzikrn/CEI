float x;
float y;
float t1=0;
float t2=0;
float r = 100;
boolean tf = false;
float range;
int size = 100;
int count = 0;

void setup() {
  frameRate(1000);
  size(300, 700);
  background(244);
  noStroke();
  fill(255, 100);
}

void draw() {
  translate(width/2, 0);

  if (tf == false) {
    x = wave(2, size);
    y = t2;
    strokeWeight(2);
  } 
  else {

    x = wave(1, size);
    y = t1;
    strokeWeight(0.3);
  }
  ellipse(x, y, 2, 2);
  t1+=range;
  t2+=0.5;
  if (y > height) {
    count++;

    if (count%5 == 0) {
      background(244);
      count = 0;
    }
    fill(random(244), random(200), 0, random(50, 180));
    translate(width/2, height/2);
    range = random(1)*2;
    size = (int)(random(1)*width/3);
    tf = !tf;
    t1 = 0;
  }
  println("count: "+count);
  println(t1);
  println(tf);
}

float wave(float f, float a) {
  return sin(f*t1)*a;
}

