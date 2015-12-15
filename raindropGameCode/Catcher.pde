class Catcher{
PImage bucket;
float diam;

Catcher(float x,float y){
 bucket = loadImage("bucket.jpg");
 diam = 50;
}

void display() {
   image(bucket,mouseX,mouseY,diam,diam);
}
}