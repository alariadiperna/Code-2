Dog myDog;

void setup(){
  size(1000,1000);
  myDog = new Dog("blue", color(255,0,0), new PVector(width/2, height/2));
  println("myDog's name is: " + myDog.name);
  
  myDog.name = "red";
   println("myDog's name is now: " + myDog.name);
   
   myDog.furColor = color (0,0,255);
}


void draw(){
 background(0);
  myDog.draw();
}
class Dog {
  String name;
  float weight;
  //color furColor;
  PVector position;
  private color furColor; 
  //need a constructor
  
  Dog(String name, color furColor, PVector position){
    this.name = name;
    this.weight = random(7,85);
    this.position = position;
    this.furColor = furColor;
  }
  
  void draw(){
    fill(furColor);
    rect(position.x,position.y, 2*weight, weight);
  }
}