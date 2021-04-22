abstract class Looper extends DisplayObject {
  float loop(float position, int dimension, float size) {
    if (position > dimension) {
      return -size;
    } else {
      return position;
    }
  }
  /*
  //alternate way of doing things
  float loopX(float x, float size) {
    if (x > width) {
      return -size;
    } else {
      return x;
    }
  }
  
  float loopY(float y, float size) {
    if (y > height) {
      return -size;
    } else {
      return y;
    }
  }
  */
}
