

class Object{
  PVector pos;
  PVector velocity = new PVector(-5, 0);
  public Object(PVector position){
    this.pos = position;
  }
  
  public void update(){
    fill(155, 0,0);
    ellipse(pos.x, pos.y, 50, 50);
    pos.add(velocity);
  }
  
}