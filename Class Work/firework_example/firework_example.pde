FireworkParticle firework;
ArrayList<FireworkParticle> fireworkArray;

void setup() {
  size(1000,1000);
  //firework = new FireworkParticle( new PVector(width/2,height/2), color(255,0,0));
  int numFireworks = 350;
  PVector position = new PVector(random(0,width), random(0,height));
  color randomColor = color(random(255),random(255),random(255));
  
  for (int i = 0; i < numFireworks; i++){
     FireworkParticle firework = new FireworkParticle(position, randomColor);
     //fireworkArray.add(firework);
  }
  println("my array's size is:" + fireworkArray.size());
}

void draw(){
  background(0);
  //firework.update();
  //firework.draw();
  for(int i =0; i < fireworkArray.size(); i++){
    FireworkParticle firework = fireworkArray.get(i);
    firework.update();
    firework.draw();
  }
}

class FireworkParticle{
  color fireworkColor;
  PVector position;
  PVector velocity;
  PVector acceleration;
  float alpha;
  int size;
  
  FireworkParticle(PVector position, color fireworkColor){
    this.position = position;
    this.fireworkColor = fireworkColor;
    
    this.velocity = new PVector(random(-1.2, 1.2), random(-1,1));
    this.acceleration = new PVector(0, random(0,0.01));
    
    this.size = 5;
    this.alpha = 255;
  }
  void update(){
   //velocity += acceleration;
   velocity.add(acceleration);
   position.add(velocity);
   
   alpha--;
    
  }
  
  void draw(){
    fill(fireworkColor,alpha);
    ellipse(position.x,position.y,size,size);
    
  }
  
}