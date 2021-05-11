class FlittingBird extends Bird {
  float ySpeed;
  final float minYSpeed = -1.0;
  final float maxYSpeed = 1.0;
  final static float minXSpeed = 2.0;
  final static float maxXSpeed = 5.0;
  final static float size = 15.0;

  FlittingBird() {
    super(FlittingBird.minXSpeed, FlittingBird.maxXSpeed);
    this.ySpeed = random(minYSpeed, maxYSpeed);
  }
  
  void move() {
    super.move();
    this.y += this.ySpeed;
    // if off the top or bottom of the screen, reverse y speed
    if (this.y < -FlittingBird.size || this.y > height) {
      this.ySpeed = -this.ySpeed;
    }
    // about 20% of the time, change speed a bit
    
    if (random(0,1) > 0.8) {
      this.ySpeed += random(-0.5, 0.5);
      this.ySpeed = max(this.minYSpeed, this.ySpeed);
      this.ySpeed = min(this.maxYSpeed, this.ySpeed);
      
      this.xSpeed += random(-0.5, 0.5);
      this.xSpeed = max(FlittingBird.minXSpeed, this.xSpeed);
      this.xSpeed = min(FlittingBird.maxXSpeed, this.xSpeed);
    }
  }
  
  void display() {
    super.display(FlittingBird.size);
  }
}
