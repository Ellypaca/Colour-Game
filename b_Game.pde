void game() {
  background(255);

  //Buttons==============================

  //true
  fill(255, 0, 0);
  stroke(255, 0, 0);
  rect(0, 0, width/2, height);

  //false
  fill(0, 0, 255);
  stroke(255, 0, 255);
  rect(width/2, 0, width/2, height);



  //Timer================================

  if (timer == maxTime) {        //used max
    rText = int(random(0, 6));
    rColor = int(random(0, 6));
  }

  //  println(rText, rColor);
  textSize(100);
  fill(#C3C0C4);
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

  //400


  if (timer <= 0) {
    timer = maxTime;
  }
  //if w = c then matching
}


void show() {
}
