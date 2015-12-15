PVector mouse ;   //declare a P
int num = 500;  
Raindrop[] r = new Raindrop[num];  //declare a new Raindrop called r
Catcher c;

// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test


void setup() {
  size(1200, 800);
  mouse = new PVector(); //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  c = new Catcher(mouseX,mouseY);
for(int i = 0; i < num; i++){
  r[i] = new Raindrop(random(width), random(height));   //Initialize r. The parameters used are the initial x and y positions
}
}

void draw() {
  mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY
  background(0, 200, 255);
  c.display();
  for(int j = 0; j < num; j++){
  r[j].fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
  r[j].display();      //display the raindrop
  if (r[j].isInContactWith(mouse)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
    r[j].reset();                         //if it is, reset the raindrop
  }
  if (r[j].loc.y > height + r[j].diam/2) {     //check to see if the raindrop goes below the bottom of the screen
    r[j].reset();                           //if it does, reset the raindrop
  }
}
}