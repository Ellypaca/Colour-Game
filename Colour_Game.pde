//Colour Game: Poppin Colours?
//Katelynn Bai
//Sept 22, 2021

//CHANGE COLOURS
String[] words;


color[] colors;
color red = #FF0900;
color blue = #0028FF;
color yellow = #FFFF00;
color green = #00FF00;
color purple = #7D0086;
color silver = #c0c0c0;


int mode;
int INTRO = 0;
int GAME = 1;
int GAMEOVER = 2;

//INTRO SCREEN VARS
PImage [] introGif;
int gifFrames; 
int f;
int titleSize;


//GAME VARS
int rColor, rText;
int coinflip;
int score;
int timer, maxTime, timerW;
boolean leftKey, rightKey;



void setup() {
  size(800, 800);


  mode = INTRO;

  textAlign(CENTER, CENTER);
  words = new String [6];
  words[0] = "RED";
  words[1] = "BLUE";
  words[2] = "YELLOW";
  words[3] = "GREEN";
  words[4] = "PURPLE";
  words[5] = "SILVER";




  colors = new color [6];
  colors[0] = red;
  colors[1] = blue;
  colors[2] = yellow;
  colors[3] = green;
  colors[4] = purple;
  colors[5] = silver;


  //gif
  int i = 0;
  gifFrames = 72;
  introGif = new PImage [gifFrames];

  while (i < gifFrames) {
    introGif[i] = loadImage("frame_"+i+"_delay-0.1s.gif");
    i++;
  }



  //GAME
  timer = maxTime = 80; //to make it easier to balance game
}

void draw() {

  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode =" + mode);
  }
}
