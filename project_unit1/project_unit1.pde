// Denys`s code

void setup() 
{
  
  // Canvas creation
  size(1000, 600);
  
  background(3, 177, 255); // Sky
  
  // Generate a picture itself
  picture();
  // Background
  //background(3, 177, 255); // Sky
  
}

int grassGenerated = 0;

void picture()
{
  noStroke();
  
  // Sun 580 160
  fill(255, 234, 44);
  ellipse(580, 160, 180, 180);
  
  // Cloud 0
  fill(255);
  ellipse(280, 110, 150, 100);
  ellipse(200, 100, 130, 110);
  
  // Cloud 1
  ellipse(780, 80, 150, 100);
  ellipse(850, 90, 130, 110);
  
  // Mountains
  fill(108, 113, 108);
  triangle(0, 290, 150, 200, 470, 429);
  rect(0, 291, 275, 139);
  fill(144, 147, 144);
  triangle(210, 429, 490, 80, 880, 429);
  
  // Snow on mountains
  fill(235);
  triangle(0, 290, 150, 200, 275, 290);
  fill(255);
  triangle(330, 278, 490, 80, 624, 200);

  // Grass
  strokeWeight(7);
  stroke(68, 201, 67);
  line(0, 430, 1000, 430);
  fill(5, 255, 3);
  rect(0, 431, 1000, 600);
  noStroke();
  
  randgrass();
  
  // Draw a robot
  robot();
}

void robot()
{
  //ROBOT BODY//
  
  // Wheel 835 491
  fill(127, 127, 127);
  ellipse(835, 491, 65, 65);
  
  // Body 768 337
  fill(62, 62, 62);
  rect(786, 337, 90, 150);
  
  /// Line 768, 330
  fill(173, 173, 173);
  rect(786, 360, 90, 10);
  
  // Sticks 830 236
  fill(62, 62, 62);
  rect(830, 236, 3, 101);
  fill(62, 62, 62);
  rect(841, 236, 3, 101);
  fill(62, 62, 62);
  rect(852, 236, 3, 101);
  
  // Head 835 170
  fill(62, 62, 62);
  ellipse(840, 190, 120, 120);
  
  // Eyes 850 180
  fill(255, 255, 255);
  ellipse(850, 180, 40, 40);
  fill(200, 200, 200);
  ellipse(810, 175, 10, 10);
  ellipse(840, 145, 10, 10);
  ellipse(875, 155, 10, 10);
  fill(0);
  ellipse(850, 180, 8, 8);
  
  // Signals 870 140
  fill(80, 80, 80);
  stroke(0);
  strokeWeight(2);
  line(870, 140, 890, 70);
  line(850, 130, 850, 85);
  line(820, 134, 800, 75);
}

void draw() 
{
  
  
  
  // Mouse coordinates
  //coordinatesText();
}

int ygrass = 420;

void randgrass()
{
  for (int x = 1; x != 1000; x++)
  {
    int randnum = int(random(1, 50));
    if(randnum == 1)
    {
      fill(68, 201, 67); 
      rect(x, ygrass, 4, 10);
    }
  }
  grassGenerated = 1;
  ifgrass();
}

void ifgrass()
{
  if(ygrass <= 800)
  {
    ygrass += 7;
    randgrass();
  }
}

void coordinatesText()
{
  fill(255);
  textSize(20);
  String coords = "X: " + mouseX + " Y: " + mouseY;
  text(coords, 900, 30);
}
