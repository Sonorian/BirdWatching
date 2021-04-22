abstract class Bird extends DisplayObject implements Mover {
  float xSpeed;
  float minXSpeed;
  float maxXSpeed;
  float ySpeed;
  float minYSpeed;
  float maxYSpeed;
  
  abstract void move();
  abstract void display();
  }
}
