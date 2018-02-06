Paddle paddle1;
Paddle paddle2;

float xPos, yPos, speedX, speedY;
boolean gameOver = false;
int P1score, P2score;


void setup() {
  size(800, 600);
  paddle1 = new Paddle(new PVector (10,height/2));
  paddle2 = new Paddle(new PVector (width-10,height/2));
  xPos = width/2;
  yPos = height/2;
  speedX = random(1, 3);
  speedY = random(1, 3);
}


void draw() {
  background(0);
  noStroke();
  ellipse(xPos, yPos, 20, 20);
  stroke(255);
  line(width/2, 0, width/2, height);
  //myPaddles.display();

  xPos -= speedX;
  yPos -= speedY;


  if (yPos < 10 || yPos >= 600 ) {
    //xPos += speedX;
    //yPos *=-speedY;
    speedY *= -1.3;


  }
     if ((xPos <= 25) && (yPos >= (paddle1.position.y-50)) && (yPos <= (paddle1.position.y+50))  ) {
      speedX *= -1.1;
      speedY *= 1.1;
    }


  paddle1.display();
  paddle2.display();
  //}
}



void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
     paddle1.position.y +=10; 
    }
    if (keyCode == RIGHT) {
      paddle1.position.y -=10; 
    }
    if (keyCode == UP) {
    paddle2.position.y +=10; 
    }
    if (keyCode == DOWN) {
    paddle2.position.y -=10; 
    }
  }
}