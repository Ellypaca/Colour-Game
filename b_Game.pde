void game() {
  background(255);

  //Buttons==============================

  //true
  fill(255, 0, 0);
  stroke(255, 0, 0);
  rect(0, 0, width/2, height);
  fill(0);
  textSize(60);
  text("TRUE", 200, 600);


  //false
  textFont(bagus);


  fill(0, 0, 255);
  stroke(255, 0, 255);
  rect(width/2, 0, width/2, height);
  fill(0);
  text("FALSE", 600, 600);



  //Timer/Game================================



  if (timer == maxTime) {     
    coinflip = int(random(0, 2));


    if (coinflip == 1) {      //puzzle is true
      rText = int(random(0, 6));
      rColor = rText;
    } else {                 //puzzle is false
      rText = int(random(0, 6));
      rColor = int(random(0, 6));
      //while (rText == rColor) {
      //  rText = int(random(0, 6));
      //  rColor = int(random(0, 6));
      //}

      if (rText == rColor) {    //(Friend helped me with this) makes sure the word and colour are not equal
        rText = (rText + (int) random(1, 6)) % 6;  //mod divides by x and takes remainder, "forces value between 0 and 5"
      }  //original value + random number 1 to 5, takes remainder.        //convert to int to avoid floating point errors (not enough memory to store all decimals)
    }                                              //1 to 6 because includes the first number and ignores last
  }







  if (rText == rColor) {
    puzzle = true;
  } else {
    puzzle = false;
  }




  textSize(100);
  fill(#050505);
  text(words[rText], 397, 403);
  fill(colors[rColor]);
  text(words[rText], 400, 400);



  //timer bar thing at top of screen
  timer--;
  fill(255);
  stroke(0);
  rect(-1, -1, 801, 51);
  fill(0);
  timerW = timer*(width/maxTime) ;
  rect(-1, -1, timerW, 50);



  if (timer <= 0) {
    //timer = maxTime;   testing purposes
    mode = GAMEOVER;
  }

  //SCORE
  textSize(30);
  text("Score: " + score, 400, 750);

  //if w = c then matching
}
