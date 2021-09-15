//bouncing ball
//a circle moves to the right horizontally
//stay in the center of the vertical axis
//when it reaches the right edge, it reverses direction
//when it reaches the left edge, it reverses direction again

///////TODO////////
//change y value
//make pong!

float circleX = 0;
float speed = 1;
void setup(){
  size(300, 200);
}

void draw(){
  //background(0);
  fill(255, 1);
  rect(0, 0, width, height);
  fill(255);
  ellipse(circleX, height/2, 20, 20);//x, y, width, height
  //circleX = circleX + speed;
  circleX += speed; //shorthand for the above line
  //width
  if((circleX>=width)||(circleX<=0)){ //is circleX greater then or equal to width
    speed = speed * -1;//reverse direction
  }
  /* the above is the same result as the two below
if(circleX>=width){ //is circleX greater then or equal to width
    speed = speed * -1;//reverse direction
  }
  if(circleX<=0){ //is circleX greater then or equal to width
    speed = speed * -1;
  }
  */
  println("circleX = ", circleX);
}
