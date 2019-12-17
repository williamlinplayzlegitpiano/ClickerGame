import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//font
PFont font;

//color
color gray = #5F5A5A;
color light_gray = #BCB9BF;
color black = 0;
color white = 255;
color red = #FF0000;
color blush_red = #FF6464;
color light_red = #FF9D9D;
color orange = #FF7D00;
color blush_orange = #FF7D64;
color light_orange = #FFAA9B;
color yellow = #FFFF00;
color blush_yellow = #D1CE02;
color light_yellow = #FCF99C;
color green = #0A9D08;
color blush_green = #14E30E;
color light_green = #7EF778;
color blue = #0000FF;
color blush_blue = #6D6DFA;
color light_blue = #4DD6F0;
color purple = #9600FF;
color blush_purple = #C883FA;
color light_purple = #D7ADF5;
color light_pink = #E596FF;
color brown = #764F06;
color pink = #FF83A4;

int highscore;

//mode-framework
int mode;
final int INTRO = 0;
final int SELECT = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;


//target customization
float circleborder;
color color1;
float sliderY;
float thickness;
float targetX;
float targetY;


//target variables
float x, y; //target's position
float vx, vy; //target's velocity  
int score, lives;

//sound variables
Minim minim;
AudioPlayer theme, coin, bump, gameover;



void setup () {
  size(800, 600);
  mode = INTRO;
  textAlign (CENTER, CENTER);
  rectMode (CENTER);
  font = loadFont("font1.vlw");
  circleborder = 1; // variable
  color1 = red;
  x = width/2;
  y = height/2;
  vx = random(-10,10);
  vy = random(-10,10);
  score = 0;
  lives = 10;
  sliderY = 400;
  thickness = 80;
  targetX = 80;
  targetY = 80;
  highscore = 0;  
  
  minim = new Minim(this);
  theme = minim.loadFile("mariobrostheme.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");
}



void draw () {

  if (mode == INTRO) {
    intro();
  } else if (mode == SELECT) {
    select();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("ERROR: Mode = " + mode);
  }

}



 
