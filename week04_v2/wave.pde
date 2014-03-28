class Wave {
  float f,a,t;

    Wave(float _t, float _f, float _a) {
    t = _t;
    a = _a;
    f = _f;
  }
  float wave() {
    t+=0.01;
    return sin(f*t)*a;
  }
}

