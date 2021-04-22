class FlittingBird extends Bird {
  float minXSpeed = 2.0;
  float maxXSpeed = 5.0;
  float ySpeed;
  float minYSpeed = -1.0;
  float maxYSpeed = 1.0;
  float size = 15.0;

  FlittingBird() {
    this.ySpeed = random(minYSpeed, maxYSpeed);
  }
  
  void move() {
    super.move();
    this.y += this.ySpeed;
    // if off the top or bottom of the screen, reverse y speed
    if (this.y < -this.size || this.y > height) {
      this.ySpeed = -this.ySpeed;
    }
    // about 20% of the time, change speed a bit
    if (random(0,1) > 0.8) {
      this.ySpeed += random(-0.5, 0.5);
      this.ySpeed = max(this.minYSpeed, this.ySpeed);
      this.ySpeed = min(this.maxYSpeed, this.ySpeed);

      this.xSpeed += random(-0.5, 0.5);
      this.xSpeed = max(this.minXSpeed, this.xSpeed);
      this.xSpeed = min(this.maxXSpeed, this.xSpeed);
    }
  }
}
