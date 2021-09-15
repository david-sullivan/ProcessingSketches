float speed = 1;
float circleX = 0;
float randomColorRed = 0;
float randomColorGreen = 0;

void setup(){
  size(300, 200);
  background(0);
}

void draw(){
  //fader
  fill(0, 2);
  rect(0, 0, width, height);
  //using random to create random colors
  randomColorRed = random(255);
  randomColorGreen = random(255);
  fill(randomColorRed, randomColorGreen, 50);
  ellipse(circleX,height/2,20,  20);
  circleX = circleX +speed;// could be shortened to circleX += speed
  
  /*
  if (circleX >= width){
    //circleX = 0;
    speed *= -1;
  }
    if (circleX <= 0){
    //circleX = 0;
    speed *= -1;
  }
  */
  //these two above if statements could be combined into one like below
  // < means less then, > means greater then, == means equal, <= less then or equal, >=greater then or equal
  // && means and, || means or, ! means not
    if ((circleX >= width)||(circleX <= 0)){
    //circleX = 0;
    speed *= -1;
  }
  
  //print the value of a variable to the log below to see the value  during runtime
  println("circleX =", circleX);
}
