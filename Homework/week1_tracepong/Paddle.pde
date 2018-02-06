class Paddle {
  PVector position;
  
  
  Paddle(PVector startPosition){
    this.position = startPosition;
    //paddle1X = 15;
    //paddle2X = 800-25;
    //paddle1Y = 300;
    //paddle2Y = 300;
  }
  void handleKeypressed(char input){
    
  }
  

  
  
  void display(){
    noStroke();
    fill(255);
    //rect(paddle1X,paddle1Y, 10, 100);
    rect(position.x,position.y, 10, 100);
    
    
  }
  
 
  
}