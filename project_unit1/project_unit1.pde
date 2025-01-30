// Denys`s code

size(1000, 600);


//background

background(3, 177, 255); // sky

//mountains

fill(108, 113, 108);
triangle(0, 290, 150, 200, 470, 429);
noStroke();
rect(0, 291, 275, 139);
strokeWeight(1);
fill(144, 147, 144);
triangle(210, 429, 490, 80, 880, 429);



//ground

strokeWeight(3);
stroke(5, 255, 3);
line(0, 430, 1000, 430);
fill(5, 255, 3);
rect(0, 431, 1000, 600);
