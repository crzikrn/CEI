import peasy.test.*;
import peasy.org.apache.commons.math.*;
import peasy.*;
import peasy.org.apache.commons.math.geometry.*;

ArrayList<Cube> listCubes;
PeasyCam cam;

void setup() {
  size(1000, 800, P3D);
  cam = new PeasyCam(this, 0, 300, 1000, 1200);
  listCubes = new ArrayList<Cube>();
}

void draw() {

  background(244);
  noFill();
  stroke(11);
  strokeWeight(1);

  if (listCubes.size() > 0) {

    for (int i=0; i< listCubes.size(); i++) {
      Cube a = listCubes.get(i);
      a.display();
      // a.update();
      a.run();
    }
  }

  if (frameCount%10==0) {
    newCube();
    newCube();
    newCube();
  }
}

void mousePressed() {
  newCube();
}

void newCube() {
  listCubes.add(new Cube(random(30), random(0, 750), random(350, 450), random(-50, 50)));
}

