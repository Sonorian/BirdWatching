class SoaringBird extends Bird {
  final static float minXSpeed = 1.0;
  final static float maxXSpeed = 3.0;
  final static float size = 30.0;
  
  SoaringBird() {
    super(SoaringBird.minXSpeed, SoaringBird.maxXSpeed);
  }

  public final void display() {
    super.display(SoaringBird.size);
  }
}
