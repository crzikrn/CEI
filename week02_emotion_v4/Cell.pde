class Cell {

  Color r, g, b;

  Cell(PVector rgb, PVector speed) {
    r = new Color(rgb.x, speed.x);
    g = new Color(rgb.y, speed.y);
    b = new Color(rgb.z, speed.z);
  } 

  PVector run() {
    return new PVector(r.run(), g.run(), b.run());
  }
}

