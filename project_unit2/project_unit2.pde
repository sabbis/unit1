//Unit 2 Project Animation

//variables
PShape buildingsBack;
PShape buildingsBack2;
PShape buildingsMid;
PShape buildingsMid2;
int bg, bg2, md, md2;



void setup()
{
  //create window
  size(800, 600);
  bg2 = -800;
  bg = 0;
  md2 = -800;
  md = 0;
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
  
  //draw ground
  ground();
  
  //change variables
  
}

void mid()
{
  buildingsMid = createShape(GROUP); //create a group of buildings at the mid layer
  buildingsMid2 = createShape(GROUP);
  
  //buildings
  fill(#3EBACE);
  noStroke();
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
  noStroke();
  //PShape build = createShape(ELLIPSE, 670, 90, 130, 500); TEST SHAPE
  PShape build1 = createShape(RECT, 670, 90, 130, 500);
  PShape build2 = createShape(RECT, 450, 70, 170, 500);
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

void ground() 
{
  //grass
  fill(60, 255, 30);
  rect(-5, 500, 810, 105);
}
