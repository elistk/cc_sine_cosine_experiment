float x1, x2, y1, y2;
float angle1, angle2; 
float diameter = 70;
int nCircles = 10;

void setup() {
  size(600, 600);
  noStroke();
  rectMode(CENTER);
}

void draw() {
  background(0);
  noFill();
  stroke(255);
  
  //convert to radians value
  float ang1 = radians(angle1);
  float ang2 = radians(angle2);
  
  //vertical lines with circles, change number of circles in nCircles
  for(int n = 0; n < nCircles; n++){
    
    // with cosine-function
    x1 = width/2 + (diameter * cos(ang1+n*nCircles));
    x2 = width/2 + (diameter * cos(ang2+n*nCircles));
    
    // draw circles
    circle(x1, height/2 - 200, diameter);
    circle(x2, height/2 + 200, diameter);
   
    // connect circles with a line
    line (x1,height/2-175,x2, height/2+175);
  
  }
  
  noFill();
  
  //horizontal lines with circles
  //with sine-function
  y1 = height/2 + (diameter * sin(ang1));
  y2 = height/2 + (diameter * sin(ang2));
  
  // draw circles
  circle(width/2 - 200, y1, diameter);
  circle(width/2+ 200, y2, diameter);
  
  // connect circles with a line
  line (width/2-175,y1,width/2+175,y2);
    
  //changes speed of the movement
  angle1 += 2;
  angle2 += 3;
}
