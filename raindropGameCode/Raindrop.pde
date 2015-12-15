class Raindrop {
  PVector loc;
  PVector vel;
  PVector acc;
  float diam;

  Raindrop(float x, float y ) {
    loc = new PVector(x,y);
    vel = new PVector(0,0);
    acc = new PVector(0,1);
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
 boolean isInContactWith(Catcher c){
   if(dist(loc.x,loc.y,c.x,c.y) <= diam/2) {
     return true;
   } else {
     return false;
   }
 }
}