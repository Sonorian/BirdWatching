abstract class Looper extends DisplayObject implements Mover{
  //*
  protected final float loop(float position, int dimension, float size) {
    if (position > dimension) {
      return -size;
    } else {
      return position;
    }
  }
  
  abstract void move();
  abstract void display();
  /*/
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
  //*/
}
