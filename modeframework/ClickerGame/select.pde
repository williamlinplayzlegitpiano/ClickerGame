void select () {
  background(white);

  strokeWeight(0);   

  targcolor();
  targsize();

  fill(gray); 
  rect(700, 500, 80, 80);
  fill(color1);
  text("START", 700, 480);
  text("GAME", 700, 520);
}

void selectClicks () {
  if (dist(700, 500, mouseX, mouseY) < 40) {
    mode = GAME;
  }
}
