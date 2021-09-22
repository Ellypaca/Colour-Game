//Colour Game!
//Katelynn Bai
//Sept 22, 2021
//A game about seeing if the colour matches the word.

//CHANGE COLOURS
String[] words;


color[] colors;
color orange = #FF5522;
color blue = #0077DD;
color yellow = #FFEE22;
color green = #aaee22;
color purple = #AA66DD;
color pink = #FF55BB;


int mode;
int INTRO = 0;
int GAME = 1;
int GAMEOVER = 2;

//INTRO SCREEN VARS
PImage [] introGif;
int gifFrames; 
int f;
int r, g, b;

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
  words[5] = "PINK";




  colors = new color [6];
  colors[0] = orange;
  colors[1] = blue;
  colors[2] = yellow;
  colors[3] = green;
  colors[4] = purple;
  colors[5] = pink;

  //intro
  r= (int) (random(1, 254));
  g= (int) (random(1, 254));
  b= (int) (random(1, 254));
  
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



  //game
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
