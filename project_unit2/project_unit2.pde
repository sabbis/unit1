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
  //BUILDING 1
  PShape build1 = createShape(RECT, 0, 210, 130, 500);
  PShape build1detail1 = createShape(RECT, 0, 210, 130, 2);
  PShape build1detail2 = createShape(RECT, 0, 230, 130, 2);
  PShape build1detail3 = createShape(RECT, 0, 250, 130, 2);
  PShape build1detail4 = createShape(RECT, 0, 270, 130, 2);
  PShape build1detail5 = createShape(RECT, 0, 290, 130, 2);
  PShape build1detail6 = createShape(RECT, 0, 310, 130, 2);
  PShape build1detail7 = createShape(RECT, 0, 330, 130, 2);
  PShape build1detail8 = createShape(RECT, 0, 350, 130, 2);
  PShape build1detail9 = createShape(RECT, 0, 370, 130, 2);
  PShape build1detail10 = createShape(RECT, 0, 390, 130, 2);
  PShape build1detail11 = createShape(RECT, 0, 410, 130, 2);
  PShape build1detail12 = createShape(RECT, 0, 430, 130, 2);
  PShape build1detail13 = createShape(RECT, 0, 450, 130, 2);
  PShape build1detail14 = createShape(RECT, 0, 470, 130, 2);
  PShape build1detail15 = createShape(RECT, 0, 490, 130, 2);
  PShape build1detail16 = createShape(RECT, 0, 510, 130, 2);
  PShape build1detail17 = createShape(RECT, 0, 530, 130, 2);
  PShape build1detail18 = createShape(RECT, 0, 550, 130, 2);
  PShape build1detail19 = createShape(RECT, 0, 570, 130, 2);
  //BUILDING 2
  PShape build2 = createShape(RECT, 190, 240, 170, 500);
  PShape build2detail1 = createShape(RECT, 190, 240, 170, 2);
  PShape build2detail2 = createShape(RECT, 190, 260, 170, 2);
  PShape build2detail3 = createShape(RECT, 190, 280, 170, 2);
  PShape build2detail4 = createShape(RECT, 190, 300, 170, 2);
  PShape build2detail5 = createShape(RECT, 190, 320, 170, 2);
  PShape build2detail6 = createShape(RECT, 190, 340, 170, 2);
  PShape build2detail7 = createShape(RECT, 190, 360, 170, 2);
  PShape build2detail8 = createShape(RECT, 190, 380, 170, 2);
  PShape build2detail9 = createShape(RECT, 190, 400, 170, 2);
  PShape build2detail10 = createShape(RECT, 190, 420, 170, 2);
  PShape build2detail11 = createShape(RECT, 190, 440, 170, 2);
  PShape build2detail12 = createShape(RECT, 190, 460, 170, 2);
  PShape build2detail13 = createShape(RECT, 190, 480, 170, 2);
  PShape build2detail14 = createShape(RECT, 190, 500, 170, 2);
  PShape build2detail15 = createShape(RECT, 190, 520, 170, 2);
  PShape build2detail16 = createShape(RECT, 190, 540, 170, 2);
  PShape build2detail17 = createShape(RECT, 190, 560, 170, 2);
  PShape build2detail18 = createShape(RECT, 190, 580, 170, 2);
  PShape build2detail19 = createShape(RECT, 190, 600, 170, 2);
  //BUILDING 3
  PShape build3 = createShape(RECT, 300, 205, 110, 500);
  PShape build3detail1 = createShape(RECT, 300, 205, 110, 2);
  PShape build3detail2 = createShape(RECT, 300, 230, 110, 2);
  PShape build3detail3 = createShape(RECT, 300, 255, 110, 2);
  PShape build3detail4 = createShape(RECT, 300, 280, 110, 2);
  PShape build3detail5 = createShape(RECT, 300, 305, 110, 2);
  PShape build3detail6 = createShape(RECT, 300, 330, 110, 2);
  PShape build3detail7 = createShape(RECT, 300, 355, 110, 2);
  PShape build3detail8 = createShape(RECT, 300, 380, 110, 2);
  PShape build3detail9 = createShape(RECT, 300, 405, 110, 2);
  PShape build3detail10 = createShape(RECT, 300, 430, 110, 2);
  PShape build3detail11 = createShape(RECT, 300, 455, 110, 2);
  PShape build3detail12 = createShape(RECT, 300, 480, 110, 2);
  PShape build3detail13 = createShape(RECT, 300, 505, 110, 2);
  PShape build3detail14 = createShape(RECT, 300, 530, 110, 2);
  PShape build3detail15 = createShape(RECT, 300, 555, 110, 2);
  PShape build3detail16 = createShape(RECT, 300, 580, 110, 2);
  //BUILDING 4
  PShape build4 = createShape(RECT, 430, 200, 190, 500);
  PShape build4detail1 = createShape(RECT, 430, 200, 190, 2);
  PShape build4detail2 = createShape(RECT, 430, 222, 190, 2);
  PShape build4detail3 = createShape(RECT, 430, 244, 190, 2);
  PShape build4detail4 = createShape(RECT, 430, 266, 190, 2);
  PShape build4detail5 = createShape(RECT, 430, 288, 190, 2);
  PShape build4detail6 = createShape(RECT, 430, 310, 190, 2);
  PShape build4detail7 = createShape(RECT, 430, 332, 190, 2);
  PShape build4detail8 = createShape(RECT, 430, 354, 190, 2);
  PShape build4detail9 = createShape(RECT, 430, 376, 190, 2);
  PShape build4detail10 = createShape(RECT, 430, 398, 190, 2);
  PShape build4detail11 = createShape(RECT, 430, 420, 190, 2);
  PShape build4detail12 = createShape(RECT, 430, 442, 190, 2);
  PShape build4detail13 = createShape(RECT, 430, 464, 190, 2);
  PShape build4detail14 = createShape(RECT, 430, 486, 190, 2);
  PShape build4detail15 = createShape(RECT, 430, 508, 190, 2);
  PShape build4detail16 = createShape(RECT, 430, 530, 190, 2);
  PShape build4detail17 = createShape(RECT, 430, 552, 190, 2);
  PShape build4detail18 = createShape(RECT, 430, 574, 190, 2);
  PShape build4detail19 = createShape(RECT, 430, 596, 190, 2);
  //BUILDING 5
  PShape build5 = createShape(RECT, 690, 240, 100, 500);
  PShape build5detail1 = createShape(RECT, 690, 240, 100, 2);
  PShape build5detail2 = createShape(RECT, 690, 260, 100, 2);
  PShape build5detail3 = createShape(RECT, 690, 280, 100, 2);
  PShape build5detail4 = createShape(RECT, 690, 300, 100, 2);
  PShape build5detail5 = createShape(RECT, 690, 320, 100, 2);
  PShape build5detail6 = createShape(RECT, 690, 340, 100, 2);
  PShape build5detail7 = createShape(RECT, 690, 360, 100, 2);
  PShape build5detail8 = createShape(RECT, 690, 380, 100, 2);
  PShape build5detail9 = createShape(RECT, 690, 400, 100, 2);
  PShape build5detail10 = createShape(RECT, 690, 420, 100, 2);
  PShape build5detail11 = createShape(RECT, 690, 440, 100, 2);
  PShape build5detail12 = createShape(RECT, 690, 460, 100, 2);
  PShape build5detail13 = createShape(RECT, 690, 480, 100, 2);
  PShape build5detail14 = createShape(RECT, 690, 500, 100, 2);
  PShape build5detail15 = createShape(RECT, 690, 520, 100, 2);
  PShape build5detail16 = createShape(RECT, 690, 540, 100, 2);
  PShape build5detail17 = createShape(RECT, 690, 560, 100, 2);
  PShape build5detail18 = createShape(RECT, 690, 580, 100, 2);
  PShape build5detail19 = createShape(RECT, 690, 600, 100, 2);
  //set 2 of buildings
  PShape build6 = createShape(RECT, 0, 240, 140, 500);
  PShape build6detail1 = createShape(RECT, 0, 240, 140, 2);
  PShape build6detail2 = createShape(RECT, 0, 260, 140, 2);
  PShape build6detail3 = createShape(RECT, 0, 280, 140, 2);
  PShape build6detail4 = createShape(RECT, 0, 300, 140, 2);
  PShape build6detail5 = createShape(RECT, 0, 320, 140, 2);
  PShape build6detail6 = createShape(RECT, 0, 340, 140, 2);
  PShape build6detail7 = createShape(RECT, 0, 360, 140, 2);
  PShape build6detail8 = createShape(RECT, 0, 380, 140, 2);
  PShape build6detail9 = createShape(RECT, 0, 400, 140, 2);
  PShape build6detail10 = createShape(RECT, 0, 420, 140, 2);
  PShape build6detail11 = createShape(RECT, 0, 440, 140, 2);
  PShape build6detail12 = createShape(RECT, 0, 460, 140, 2);
  PShape build6detail13 = createShape(RECT, 0, 480, 140, 2);
  PShape build6detail14 = createShape(RECT, 0, 500, 140, 2);
  PShape build6detail15 = createShape(RECT, 0, 520, 140, 2);
  PShape build6detail16 = createShape(RECT, 0, 540, 140, 2);
  PShape build6detail17 = createShape(RECT, 0, 560, 140, 2);
  PShape build6detail18 = createShape(RECT, 0, 580, 140, 2);
  PShape build6detail19 = createShape(RECT, 0, 600, 140, 2);
  PShape build7 = createShape(RECT, 150, 280, 180, 500);
  PShape build8 = createShape(RECT, 330, 260, 100, 500);
  PShape build9 = createShape(RECT, 520, 200, 110, 500);
  PShape build0 = createShape(RECT, 650, 240, 120, 500);
  //add buildings to a group
  //BUILDING 1
  buildingsFront.addChild(build1);
  buildingsFront.addChild(build1detail1);
  buildingsFront.addChild(build1detail2);
  buildingsFront.addChild(build1detail3);
  buildingsFront.addChild(build1detail4);
  buildingsFront.addChild(build1detail5);
  buildingsFront.addChild(build1detail6);
  buildingsFront.addChild(build1detail7);
  buildingsFront.addChild(build1detail8);
  buildingsFront.addChild(build1detail9);
  buildingsFront.addChild(build1detail10);
  buildingsFront.addChild(build1detail11);
  buildingsFront.addChild(build1detail12);
  buildingsFront.addChild(build1detail13);
  buildingsFront.addChild(build1detail14);
  buildingsFront.addChild(build1detail15);
  buildingsFront.addChild(build1detail16);
  buildingsFront.addChild(build1detail17);
  buildingsFront.addChild(build1detail18);
  buildingsFront.addChild(build1detail19);
  //BUILDING 2
  buildingsFront.addChild(build2);
  buildingsFront.addChild(build2detail1);
  buildingsFront.addChild(build2detail2);
  buildingsFront.addChild(build2detail3);
  buildingsFront.addChild(build2detail4);
  buildingsFront.addChild(build2detail5);
  buildingsFront.addChild(build2detail6);
  buildingsFront.addChild(build2detail7);
  buildingsFront.addChild(build2detail8);
  buildingsFront.addChild(build2detail9);
  buildingsFront.addChild(build2detail10);
  buildingsFront.addChild(build2detail11);
  buildingsFront.addChild(build2detail12);
  buildingsFront.addChild(build2detail13);
  buildingsFront.addChild(build2detail14);
  buildingsFront.addChild(build2detail15);
  buildingsFront.addChild(build2detail16);
  buildingsFront.addChild(build2detail17);
  buildingsFront.addChild(build2detail18);
  buildingsFront.addChild(build2detail19);
  //BUILDING 3
  buildingsFront.addChild(build3);
  buildingsFront.addChild(build3detail1);
  buildingsFront.addChild(build3detail2);
  buildingsFront.addChild(build3detail3);
  buildingsFront.addChild(build3detail4);
  buildingsFront.addChild(build3detail5);
  buildingsFront.addChild(build3detail6);
  buildingsFront.addChild(build3detail7);
  buildingsFront.addChild(build3detail8);
  buildingsFront.addChild(build3detail9);
  buildingsFront.addChild(build3detail10);
  buildingsFront.addChild(build3detail11);
  buildingsFront.addChild(build3detail12);
  buildingsFront.addChild(build3detail13);
  buildingsFront.addChild(build3detail14);
  buildingsFront.addChild(build3detail15);
  buildingsFront.addChild(build3detail16);
  //BUILDING 4
  buildingsFront.addChild(build4);
  buildingsFront.addChild(build4detail1);
  buildingsFront.addChild(build4detail2);
  buildingsFront.addChild(build4detail3);
  buildingsFront.addChild(build4detail4);
  buildingsFront.addChild(build4detail5);
  buildingsFront.addChild(build4detail6);
  buildingsFront.addChild(build4detail7);
  buildingsFront.addChild(build4detail8);
  buildingsFront.addChild(build4detail9);
  buildingsFront.addChild(build4detail10);
  buildingsFront.addChild(build4detail11);
  buildingsFront.addChild(build4detail12);
  buildingsFront.addChild(build4detail13);
  buildingsFront.addChild(build4detail14);
  buildingsFront.addChild(build4detail15);
  buildingsFront.addChild(build4detail16);
  buildingsFront.addChild(build4detail17);
  buildingsFront.addChild(build4detail18);
  buildingsFront.addChild(build4detail19);
  //BUILDING 5
  buildingsFront.addChild(build5);
  buildingsFront.addChild(build5detail1);
  buildingsFront.addChild(build5detail2);
  buildingsFront.addChild(build5detail3);
  buildingsFront.addChild(build5detail4);
  buildingsFront.addChild(build5detail5);
  buildingsFront.addChild(build5detail6);
  buildingsFront.addChild(build5detail7);
  buildingsFront.addChild(build5detail8);
  buildingsFront.addChild(build5detail9);
  buildingsFront.addChild(build5detail10);
  buildingsFront.addChild(build5detail11);
  buildingsFront.addChild(build5detail12);
  buildingsFront.addChild(build5detail13);
  buildingsFront.addChild(build5detail14);
  buildingsFront.addChild(build5detail15);
  buildingsFront.addChild(build5detail16);
  buildingsFront.addChild(build5detail17);
  buildingsFront.addChild(build5detail18);
  buildingsFront.addChild(build5detail19);
  //set 2 of buildings
  //BUILDING 6
  buildingsFront2.addChild(build6);
  buildingsFront2.addChild(build6detail1);
  buildingsFront2.addChild(build6detail2);
  buildingsFront2.addChild(build6detail3);
  buildingsFront2.addChild(build6detail4);
  buildingsFront2.addChild(build6detail5);
  buildingsFront2.addChild(build6detail6);
  buildingsFront2.addChild(build6detail7);
  buildingsFront2.addChild(build6detail8);
  buildingsFront2.addChild(build6detail9);
  buildingsFront2.addChild(build6detail10);
  buildingsFront2.addChild(build6detail11);
  buildingsFront2.addChild(build6detail12);
  buildingsFront2.addChild(build6detail13);
  buildingsFront2.addChild(build6detail14);
  buildingsFront2.addChild(build6detail15);
  buildingsFront2.addChild(build6detail16);
  buildingsFront2.addChild(build6detail17);
  buildingsFront2.addChild(build6detail18);
  buildingsFront2.addChild(build6detail19);
  //BUILDING 7
  buildingsFront2.addChild(build7);
  //BUILDING 8
  buildingsFront2.addChild(build8);
  //BUILDING 9
  buildingsFront2.addChild(build9);
  //BUILDING 10
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
