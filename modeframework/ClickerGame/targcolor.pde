void targcolor () {
noStroke();
if (dist (200, 100, mouseX, mouseY) < 20) {
  strokeWeight(2);
  stroke(white);
  if (mousePressed ==true) color1 = red;
}
fill(red);
ellipse(200, 100, 40, 40);

noStroke();
if (dist (400, 100, mouseX, mouseY) < 20) {
  strokeWeight(2);
  stroke(white);
  if (mousePressed == true) color1 = orange;
}

fill(orange);
ellipse(400, 100, 40, 40);  

  noStroke();
if (dist (600, 100, mouseX, mouseY) < 20) {
  strokeWeight(2);
  stroke(white);
  if (mousePressed == true) color1 = yellow;
}
fill(yellow);
ellipse(600, 100, 40, 40);


noStroke();
if (dist (200, 170, mouseX, mouseY) < 20) {
  strokeWeight(2);
  stroke(white);    
  if (mousePressed == true) color1 = green;
}
fill(green);
ellipse(200, 170, 40, 40);


noStroke();
if (dist (400, 170, mouseX, mouseY) < 20) {
  strokeWeight(2);
  stroke(white);    
  if (mousePressed == true) color1 = blue;
}
fill(blue);
ellipse(400, 170, 40, 40);


noStroke();
if (dist (600, 170, mouseX, mouseY) < 20) {
  strokeWeight(2);
  stroke(white);   
  if (mousePressed == true) color1 = purple;
} 
fill(purple);
ellipse(600, 170, 40, 40);  
}
