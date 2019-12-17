
void game () {
  theme.play();
  
  background (0,255,0);

  fill(blush_blue);
  strokeWeight(2);
  stroke(blue);
  rect(width/2, 75, 100, 100);
  fill(blush_red);
  textSize(20); 
  text ("Score: " + score, width/2, 50);
  text ("Lives: " + lives, width/2, 100);
  
  stroke(pink);
  fill(white);
  rect(50,50,45,45);
  fill(black);
  noStroke();
  rect(40,50,5,30);
  rect(60,50,5,30);
  
  stroke(pink);
  fill(white);
  rect(50,50,45,45);
  fill(black);
  text("HS: " + highscore,50,50);
    
  strokeWeight (circleborder);
  fill(color1);
  ellipse(x, y, thickness, thickness); 


  x = x + vx;
  y = y + vy;  
  
  if (y < thickness/2 || y > height - thickness/2) vy = -vy;
  if (x < thickness/2 || x > width - thickness/2) vx = -vx;
  
}

void gameClicks () {
  if (dist(mouseX,mouseY,x,y) < 40) {
    score = score + 1; 
    coin.rewind();
    coin.play();
  } else if (mouseX > 27.5 && mouseX < 72.5 && mouseY > 27.5 && mouseY < 72.5){
    
  } else {  
    lives = lives - 1; 
    bump.rewind();
    bump.play();
      if (lives == 0) mode =  GAMEOVER;
  }  
  
  if (mouseX > 27.5 && mouseX < 72.5 && mouseY > 27.5 && mouseY < 72.5) {
    mode = PAUSE;
  }
}
