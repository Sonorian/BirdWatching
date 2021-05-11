abstract class Bird extends Looper {
  float xSpeed;
  float minXSpeed;
  float maxXSpeed;
  
  Bird(float _minXSpeed, float _maxXSpeed) {
    this.x = random(0, width);
    this.y = random(0, height);
    this.xSpeed = random(_minXSpeed, _maxXSpeed);
  }
  
  public void move(){
    this.x += this.xSpeed;
    this.x = super.loop(this.x, width, this.size);
  }
  
  public void display(float _size) {
    fill(this.fillColor);
    ellipse(this.x, this.y, _size*2, _size);
  }
}
