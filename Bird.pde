abstract class Bird extends Looper {
  float xSpeed;
  float minXSpeed;
  float maxXSpeed;
  
  Bird() {
    this.x = random(0, width);
    this.y = random(0, height);
    this.xSpeed = random(this.minXSpeed,this.maxXSpeed);
  }
  
  void move(){
    this.x += this.xSpeed;
    this.x = super.loop(this.x, width, this.size);
  }
  
  void display() {
    fill(this.fillColor);
    ellipse(this.x, this.y, this.size*2, this.size);
  }
}
