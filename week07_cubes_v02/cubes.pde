class Cube {
  float size;
  float x, y, z;
  color stroke = color(random(200,244),random(200),random(200));
  float tx=0;
  float ty=5000;
  float xf=0.01;
  float xa=400;
  float yf = xf;
  float ya = xa;
  
  float aa = 400;
  Cosi xaWave;
  Sine yaWave;
    
  Sine sine;
  Cosi cosi;
  
  Sigmoid xfcurve;
  Sigmoid yfcurve;
  
  Cube(float _size, float _x, float _y, float _z) {
    size = _size;
    x = _x;
    y = _y;
    z = _z;
    // 400 increase the barrel radius
    sine = new Sine(0,xf,xa,0);
    cosi = new Cosi(0,yf,ya,0);
    
    xfcurve = new Sigmoid(-7.5, 0.00025,1);
    yfcurve = new Sigmoid(-7.5, 0.000025,0.5);
    
    xaWave = new Cosi(0, xf, aa, aa);
    yaWave = new Sine(0, yf, aa, aa);
 
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
    xf = xfcurve.run()*0.01;
    yf = yfcurve.run()*0.001;
    
    xa = xaWave.wave();
    //ya = yaWave.wave()*0.01;
    
    float mx = map(noise(tx),0,1,-1,1);
    float my = map(noise(ty),0,1,-1,1);
    x = sine.mod(xf,xa);
    //y = cosi.mod(yf,ya);
    y+=my*10;
    
    
    tx+=0.01;
    ty+=0.05;
  }
}

