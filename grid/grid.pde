int gapSize = 10;

void setup(){
    size(300, 200);
  background(255);
}

void draw(){
  for(int i = 0; i <width; i+=gapSize){
    line(i, 0, i, height);
  }
    for(int i = 0; i <height; i+=gapSize){
    line(0, i, width, i);
  }
}
