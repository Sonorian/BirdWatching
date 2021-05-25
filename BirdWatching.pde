public ArrayList<Mover> objects;

public final void setup() {
  noStroke();
  size(600, 400);
  
  objects = new ArrayList<Mover>();
  int numSoaringBirds = 5;
  int numFlittingBirds = 5;
  int numFallingFeathers = 10;
  
  for(int i=0; i<numSoaringBirds; i++) {
    objects.add(new SoaringBird());
  }
  for(int i=0; i<numFlittingBirds; i++) {
    objects.add(new FlittingBird());
  }
  for(int i=0; i<numFallingFeathers; i++) {
    objects.add(new FallingFeather());
  }
}

public final void draw() {
  background(173,216,230);
  
  int size = objects.size();
  for(int i=0; i<size; i++) {
    Mover object = objects.get(i);
    object.move();
    object.display();
    objects.set(i, object);
  }
}
