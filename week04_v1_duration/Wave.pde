class Wave {
  float f,a,t,o;

    Wave(float _t, float _f, float _a, float _o) {
    t = _t;
    a = _a;
    f = _f;
    o = _o;
  }
  float wave() {
    t+=0.01;
    return sin(f*t)*a;
  }
}

