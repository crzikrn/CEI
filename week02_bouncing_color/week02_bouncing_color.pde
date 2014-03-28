PVector rgb;
PVector spd;

void setup() {
  size(600, 600);
  rgb = new PVector(0, 0, 0);
  rgb.x = constrain(rgb.x, 0, 255);
  rgb.y = constrain(rgb.y, 0, 255);
  rgb.z = constrain(rgb.z, 0, 255);
}

void draw() {
  spd = new PVector(random(10), random(5), random(10));
  fill(rgb.x, rgb.y, rgb.z);

  rect(0, 0, 600, 600);
  if (rgb.x < 0 || rgb.x > 255) {
    spd.x*=-1;
  }
  else if (rgb.y > 255 || rgb.y < 0) {
    spd.y*=-1;
  }
  else if (rgb.z > 255 || rgb.z < 0) {
    spd.z*=-1;
  }
  rgb.x+=spd.x;
  rgb.y+=spd.y;
  rgb.z+=spd.z;
  
  print(rgb.x);
}

