PVector birdPos, objPos, obj2Pos;
Bird bird;
Object obj, obj2;
float rand, rand2;

void setup(){
  size(800, 300);   
  float rand = floor((float)Math.random()*275);
  float rand2 = floor((float)Math.random()*275);
  
  birdPos = new PVector(width/2,height/2);
  bird = new Bird(birdPos);
  
  objPos = new PVector(width, rand);
  obj = new Object(objPos);
  
  obj2Pos = new PVector(width+400, rand2);
  obj2 = new Object(obj2Pos);
}

/* reset game */
void keyReleased(){
  if(key == 'r'){
    loop();
    setup();
  }
}

void draw(){
  background(0);
  /* paint things on screen */
  bird.update();
  obj.update();
  obj2.update();
  
  line(1,1, width-1, 1);
  line(1,height-1, width-1, height-1);
  
  /* bird crash into objects */
  if(bird.pos.dist(obj2.pos) < 50 || 
     bird.pos.dist(obj.pos) < 50){
       noLoop();
  }
 
  /*
  have objects 
  rerun from edge of screen
  */
  if(obj2.pos.x < 0){
    float rand2 = floor((float)Math.random()*275);
  
    obj2.pos.y = rand2;
    obj2.pos.x = width;
  }
  
  if(obj.pos.x < 0){
    float rand = floor((float)Math.random()*275);
  
    obj.pos.x = width;
    obj.pos.y = rand;
  }
  /* ---------------------------------  */
  text("RESET R", 20, 20);
}