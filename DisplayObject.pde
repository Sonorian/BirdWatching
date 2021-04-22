abstract class DisplayObject {
  float x;
  float y;
  float size;
  color fillColor;
  
  DisplayObject() {
    this.fillColor = color(random(0,255), random(0,255), random(0,255));
  }
  
  abstract void display();
}
