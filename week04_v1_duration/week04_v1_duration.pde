float duration;
boolean isOn;
int count;
Wave dWave = new Wave(0, 40, 10,10);

void setup() {

  size(400, 400);
}

void draw() {
  background(0);  
  count++;
  if (count > duration) {
    count = 0;
    isOn = !isOn;
    duration = dWave.wave();
  }

  if (isOn) rect(width/2, height/2, 100, 100);
}

