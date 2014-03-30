class Sine {
  float t, f, a, o; 

  Sine(float _t, float _f, float _a, float _o) {
    t = _t;
    f = _f;
    a = _a;
    o = _o;
  } 

  void update() {
    t+=f;
  }

  float mod(float _f, float _a) {
    f = _f;
    a = _a;
    return wave();
  }


  float wave() {
    update();
    return sin(t)*a+o;
  }
}

class Cosi {
  float t, f, a, o; 

  Cosi(float _t, float _f, float _a, float _o) {
    t = _t;
    f = _f;
    a = _a;
    o = _o;
  } 

  void update() {
    t+=f;
  }
  
  float mod(float _f, float _a) {
    f = _f;
    a = _a;
    return wave();
  }

  float wave() {
    update();
    return cos(t)*a+o;
  }
}

