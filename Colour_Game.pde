//Colour Game
//Katelynn Bai
//Sept 22, 2021
//A game about seeing if the colour matches the word.

//CHANGE COLOURS
String[] words;


color[] colors;
color orange = #FF5522;
color blue = #0077DD;
color yellow = #FFEEAA;
color green = #99DD88;
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

PFont bagus, bravaryScript, bravary;


//GAME VARS
int rColor, rText;
int coinflip;
int score, highscore;
int timer, maxTime, timerW;
boolean puzzle;



void setup() {
  size(800, 800);


  mode = INTRO;

  textAlign(CENTER, CENTER);
  words = new String [6];
  words[0] = "ORANGE";
  words[1] = "BLUE";
  words[2] = "YELLOW";
  words[3] = "GREEN";
  words[4] = "PURPLE";
  words[5] = "SILVER";




  colors = new color [6];
  colors[0] = orange;
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

  //fonts
  bagus = createFont("Bagus.otf", 45);
  bravaryScript = createFont("BravaryScript.ttf", 100);
  bravary = createFont("Bravary.ttf", 70);



  //GAME
  timer = maxTime = 80; //to make it easier to balance game
  highscore = 0;
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
