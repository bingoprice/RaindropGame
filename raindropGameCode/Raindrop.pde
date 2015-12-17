class Raindrop {
  PVector loc;
  PVector vel;
  PVector acc;
  float diam;

  Raindrop(float x, float y ) {
    loc = new PVector(x,y);
    vel = PVector.random2D();
    acc = new PVector(0,.1);
    diam = 5;
    fill(0,0,128);
  }
  
  void fall() {
    loc.add(vel);
    vel.add(acc);
  }
  
  void display(){
   ellipse(loc.x,loc.y,diam,diam);
  }
  
  void reset(){
    loc.set(random(width),0);
    vel.set(0,0);
  }
  boolean isDead(){
   if(dist(loc.x,loc.y,mouse.x,mouse.y) <= diam/2+25) {
     return true;
   } else {
     return false;
   } 
  }
 
 void rebirth(float x, float y){
  loc.set(x,y);
  vel = PVector.random2D();
 }
}