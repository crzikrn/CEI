float x, y;
float xspeed;
Wave xspeedWave = new Wave(0,10,10);


void setup() {
  size(400, 400);
  background(0);
  y = height/2;
  
}

void draw(){
 xspeed = xspeedWave.wave(); 
 x += xspeed;
 ellipse(x,y,10,10);
}

