

class Bird{
  PVector pos;
  PVector velocity = new PVector(0, 2.1);
  PVector acc = new PVector(0, 0.2);
  
  public Bird(PVector position){
    this.pos = position; 
  }

  public void update(){
    frameRate(60);
    pos.add(velocity);
    velocity.add(acc);
    stroke(155);
    fill(255);
    if(mousePressed){
      velocity.y -= 0.67;
    }
    if(pos.y < 0){
      pos.y = 0;
    }
    if(pos.y > height){
      pos.y = height;
    }
    ellipse(pos.x, pos.y, 50, 50);
  }

}