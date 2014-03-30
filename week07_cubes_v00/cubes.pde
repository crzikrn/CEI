class Cube {
  float size;
  float x, y, z;
  color stroke = color(random(200,244),random(200),random(200));
  float tx=0;
  float ty=5000;
   
  Sine sine;
  Cosi cosi;
  
  Cube(float _size, float _x, float _y, float _z) {
    size = _size;
    x = _x;
    y = _y;
    z = _z;
    // 400 increase the barrel radius
    sine = new Sine(0,0.01,400,0);
    cosi = new Cosi(0,0.01,400,0);
    
  
 
  }

//  void update(float _x, float _y, float _z) {
//    x = _x;
//    y = _y;
//    z = _z;
//  }

  void update() {
    //x = sine.wave();
    z = sine.wave();
    x = cosi.wave();
   // y = sine2.wave();
    
  }
  void display() {
    update();
    pushMatrix();
    translate(x,y,z);
    fill(stroke);
    stroke(stroke);
    box(size);
    popMatrix();
  }

  void run() {

    
    float mx = map(noise(tx),0,1,-1,1);
    float my = map(noise(ty),0,1,-1,1);
 
    y+=my*10;
    
    
    tx+=0.01;
    ty+=0.05;
  }
}

