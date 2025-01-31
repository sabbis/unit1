//Denys`s Robot Face

void setup()
{
  size(500, 500);
  background(75, 75, 255);
}

void draw()
{
  //Face Base
  noStroke();
  fill(150);
  rect(150, 150, 200, 200);
  
  //Signal
  strokeWeight(10);
  stroke(100);
  line(250, 150, 310, 100);
  fill(255, 0, 0);
  ellipse(310, 100, 30, 30);
  
  //Eyes
  stroke(0);
  line(200, 200, 225, 200);
  line(280, 200, 305, 200);
  
  //Mouse
  noStroke();
  fill(150, 0, 0);
  ellipse(250, 290, 100, 20);
}
