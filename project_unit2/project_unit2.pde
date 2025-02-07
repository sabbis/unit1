//Unit 2 Project Animation

//variables
PShape buildingsBack;
PShape buildingsBack2;
PShape buildingsMid;
PShape buildingsMid2;
PShape buildingsFront;
PShape buildingsFront2;
PShape grassParent;
int bg, bg2, md, md2, fr, fr2, grassGenerated;
float rotnum;


void setup()
{
  //create window
  size(800, 600);
  bg2 = -800;
  bg = 0;
  md2 = -800;
  md = 0;
  fr2 = -800;
  fr = 0;
  
  
}

void draw()
{
  //background
  noFill();
  background(55, 202, 237);
  
  println("bg: " + bg);
  println("bg2: " + bg);
  
  //draw buildings layers
  back();
  
  mid();
  
  front();
  
  //draw ground
  ground();
  
  
  
  //change variables
  if(grassGenerated != 1)
  {
    randgrass();
  }
  if (ygrass >= 800) 
  {
    grassGenerated = 1; // Stop when full
  }
  
  shape(grassParent);
  
  drawCar();
  
  rotnum += 0.2;
}

void front()
{
  buildingsFront = createShape(GROUP); //create a group of buildings at the mid layer
  buildingsFront2 = createShape(GROUP);
  
  //buildings
  fill(#7EEDFF);
  stroke(#5BD6E8);
  strokeWeight(6);
  PShape build1 = createShape(RECT, 0, 210, 130, 500);
  PShape build2 = createShape(RECT, 190, 240, 170, 500);
  PShape build3 = createShape(RECT, 300, 205, 110, 500);
  PShape build4 = createShape(RECT, 430, 200, 190, 500);
  PShape build5 = createShape(RECT, 690, 240, 100, 500);
  //set 2 of buildings
  PShape build6 = createShape(RECT, 0, 240, 140, 500);
  PShape build7 = createShape(RECT, 150, 280, 180, 500);
  PShape build8 = createShape(RECT, 330, 260, 100, 500);
  PShape build9 = createShape(RECT, 520, 200, 110, 500);
  PShape build0 = createShape(RECT, 650, 240, 120, 500);
  //add buildings to a group
  buildingsFront.addChild(build1);
  buildingsFront.addChild(build2);
  buildingsFront.addChild(build3);
  buildingsFront.addChild(build4);
  buildingsFront.addChild(build5);
  //set 2 of buildings
  buildingsFront2.addChild(build6);
  buildingsFront2.addChild(build7);
  buildingsFront2.addChild(build8);
  buildingsFront2.addChild(build9);
  buildingsFront2.addChild(build0);
  
  //draw buildings
  shape(buildingsFront, fr, 0);
  shape(buildingsFront2, fr2, 0);
  fr += 1;
  if(fr >= 800)
  {
    fr = -800;
  }
  fr2 += 1;
  if(fr2 >= 800)
  {
    fr2 = -800;
  }
}

void mid()
{
  buildingsMid = createShape(GROUP); //create a group of buildings at the mid layer
  buildingsMid2 = createShape(GROUP);
  
  //buildings
  fill(#3EBACE);
  stroke(#2A9FAF);
  strokeWeight(8);
  PShape build1 = createShape(RECT, 0, 150, 130, 500);
  PShape build2 = createShape(RECT, 180, 180, 170, 500);
  PShape build3 = createShape(RECT, 320, 100, 110, 500);
  PShape build4 = createShape(RECT, 450, 210, 190, 500);
  PShape build5 = createShape(RECT, 700, 105, 100, 500);
  //set 2 of buildings
  PShape build6 = createShape(RECT, 0, 140, 140, 500);
  PShape build7 = createShape(RECT, 170, 220, 180, 500);
  PShape build8 = createShape(RECT, 390, 180, 100, 500);
  PShape build9 = createShape(RECT, 500, 150, 110, 500);
  PShape build0 = createShape(RECT, 630, 110, 120, 500);
  
  //add buildings to a group
  buildingsMid.addChild(build1);
  buildingsMid.addChild(build2);
  buildingsMid.addChild(build3);
  buildingsMid.addChild(build4);
  buildingsMid.addChild(build5);
  //set 2 of buildings
  buildingsMid2.addChild(build6);
  buildingsMid2.addChild(build7);
  buildingsMid2.addChild(build8);
  buildingsMid2.addChild(build9);
  buildingsMid2.addChild(build0);
  
  //draw buildings
  shape(buildingsMid, md, 0);
  shape(buildingsMid2, md2, 0);
  md += 2;
  if(md >= 800)
  {
    md = -800;
  }
  md2 += 2;
  if(md2 >= 800)
  {
    md2 = -800;
  }
}

void back()
{
  buildingsBack = createShape(GROUP); //create a group of buildings at the back layer
  buildingsBack2 = createShape(GROUP);
  
  //buildings
  fill(#266776);
  stroke(#2C5A64);
  strokeWeight(10);
  //PShape build = createShape(ELLIPSE, 670, 90, 130, 500); TEST SHAPE
  PShape build1 = createShape(RECT, 670, 90, 130, 500);
  PShape build2 = createShape(RECT, 450, 70, 170, 500);
  fill(#2C5A64);
  PShape build2det = createShape(RECT, 605, 70, 15, 500);
  PShape build2det2 = createShape(RECT, 450, 70, 15, 500);
  fill(#266776);
  PShape build3 = createShape(RECT, 320, 115, 110, 500);
  PShape build4 = createShape(RECT, 150, 200, 190, 500);
  PShape build5 = createShape(RECT, 0, 60, 120, 500);
  //set 2 of buildings
  PShape build6 = createShape(RECT, 0, 80, 130, 500);
  PShape build7 = createShape(RECT, 200, 180, 180, 500);
  PShape build8 = createShape(RECT, 380, 85, 110, 500);
  PShape build9 = createShape(RECT, 520, 110, 110, 500);
  PShape build0 = createShape(RECT, 650, 150, 120, 500);
  
  //add buildings to a group
  //buildingsBack.addChild(build);
  buildingsBack.addChild(build1);
  buildingsBack.addChild(build2);
  buildingsBack.addChild(build2det);
  buildingsBack.addChild(build2det2);
  buildingsBack.addChild(build3);
  buildingsBack.addChild(build4);
  buildingsBack.addChild(build5);
  //set 2 of buildings
  //buildingsBack.addChild(build);
  buildingsBack2.addChild(build6);
  buildingsBack2.addChild(build7);
  buildingsBack2.addChild(build8);
  buildingsBack2.addChild(build9);
  buildingsBack2.addChild(build0);
  
  //draw buildings
  shape(buildingsBack, bg, 0);
  shape(buildingsBack2, bg2, 0);
  bg += 3;
  if(bg >= 800)
  {
    bg = -800;
  }
  bg2 += 3;
  if(bg2 >= 800)
  {
    bg2 = -800;
  }
  
}

int ygrass = 494;
int x = 10;



void randgrass()
{
  if (ygrass >= 800) return; // Stop when reaching the bottom

  if (grassParent == null) {
    grassParent = createShape(GROUP); // Initialize once
  }

  fill(#68E340);

  for (int x = 1; x <= width; x += 10) // Adjust spacing if needed
  {
    int randnum = int(random(1, 22));
    if (randnum == 1)
    {
      PShape grass1 = createShape(RECT, x, ygrass, 3, 7);
      grassParent.addChild(grass1);
    }
  }

  ygrass += 7; // Move down for the next row
}

void ground() 
{
  //ground
  stroke(#68E340);
  fill(60, 255, 30);
  rect(-5, 500, 810, 105);
}

void drawCar() 
{
  stroke(0);
  strokeWeight(2);
  
  // Car top (window section)
  fill(180);
  rect(350, 410, 200, 70, 10);

  // Windows
  fill(100);
  rect(375, 415, 50, 50);
  rect(475, 415, 50, 50);
  
  // Car body
  fill(255, 0, 0);
  rect(300, 470, 300, 100, 20);

  // Wheel 1
  pushMatrix();
  translate(350, 570);
  rotate(rotnum);
  fill(0);
  ellipse(0, 0, 60, 60);
  fill(150);
  ellipse(0, 0, 30, 30);
  fill(0);
  rect(-5, -5, 10, 10);
  stroke(150);
  noStroke();
  popMatrix();
  
  // Wheel 2
  pushMatrix();
  translate(550, 570);
  rotate(rotnum);
  fill(0);
  ellipse(0, 0, 60, 60);
  fill(150);
  ellipse(0, 0, 30, 30);
  fill(0);
  rect(-5, -5, 10, 10);
  stroke(150);
  noStroke();
  popMatrix();
  
  // lights
  fill(255, 255, 0);
  ellipse(600, 500, 20, 10);
  ellipse(300, 500, 20, 10);
  
}
