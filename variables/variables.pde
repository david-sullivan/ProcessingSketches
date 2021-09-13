///////TO DO /////
//ability to draw different shapes

//declaring variables first
float brushTransparency; 
float brushColor = 255; //you can initialize values when you declase them
float brushSize = 10;
boolean brushIsEraser = false;

void setup(){
size(300, 200); //initializing width and height

brushTransparency = 50;//or initialize variables here in setup

}

void draw(){
  //erase the background
//background(256, 0, 0);
fill(255, 0, 0, 1); //change the alpha value to change how fast it erases
rect(0, 0, width, height);


//is the brush an eraser or not?
if(brushIsEraser ==true){
  brushColor = 255; //brush color is white
}else{
  brushColor = mouseX/2;
}
  //my first ellipse
//noStroke();

stroke(brushColor*2, brushColor, 50, 20);
strokeWeight(16);  // Thicker
brushTransparency = mouseY/2;
brushSize = mouseX/10;
fill(#4549DE, brushTransparency);
line(mouseX, mouseY, width-mouseX, height-mouseY);
fill(brushColor);
ellipse(mouseX, mouseY, brushSize, brushSize);
}

//if the mouse is pressed toggle between eraser brush or color brush
void mousePressed(){
  if(brushIsEraser == false){
  brushIsEraser = true;
  }else{
  brushIsEraser = false;
  }
}


/*



//my second ellipse
stroke(200, 100, 50);
fill(#75C7F2); //light blue
ellipse(mouseX, 100, 50, 50);

stroke(200, 100, 50);
strokeWeight(16);  // Thicker
fill(#E6FF31, 100);
rect(50, 150, width/2, 20);

line(50, 50, 250, 60);
line(width/2, height/2, width/2, height/2+height/3);
*/
