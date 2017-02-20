

class Bird{
  PVector pos;
  PVector velocity = new PVector(0, 1.2);
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
    if(keyPressed && key=='b'){
      velocity.y -= 0.67;
    }
    if(pos.y < 0){
      noLoop();
    }
    if(pos.y > height){
      noLoop();
    }
    ellipse(pos.x, pos.y, 50, 50);
  }

}