void pause () {
 background(0);
 theme.pause();
  
  stroke(pink);
  fill(white);
  rect(50,50,45,45);
  fill(black);
  noStroke();
  fill(light_pink);
  triangle(35,65,35,32,65,48);

}

void pauseClicks () {
    if (mouseX > 27.5 && mouseX < 72.5 && mouseY > 27.5 && mouseY < 72.5) {
    mode = GAME;
  }
}
