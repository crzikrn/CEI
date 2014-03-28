class Wave {
  float freq, time, amp, off;
  
  Wave(float _time, float _freq, float _amp, float _off) {
    time = _time;
    freq = _freq;
    amp = _amp;
    off = _off;
  }
  void update() {
    time+=freq;
  }

  float run(float _freq, float _amp) {
    freq = _freq;
    amp = _amp;
    update();
    return wave();
  }

  float wave() {
    return 0;
  }
}

class Sine extends Wave {
  Sine(float t, float f, float a, float o) {
    super(t, f, a, o);
  }

  float wave() {
    return sin(time)*amp+off;
  }
}

