abstract class DisplayObject {
  protected float x;
  protected float y;
  protected float size;
  protected final color fillColor;
  
  DisplayObject() {
    this.fillColor = color(random(0,255), random(0,255), random(0,255));
  }
  
  abstract void display();
}
