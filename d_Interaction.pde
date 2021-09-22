void mouseReleased() {
}



void mousePressed() {
  if (mode == INTRO) {
    mode = GAME;
  } else if (mode == GAMEOVER){
    mode = INTRO;
  }
  else if (mode == GAME) {
    if (mouseX >= 0 && mouseX <= 400 && mouseY >= 0 && mouseY <= 800) {
      if (puzzle == true) {
        score++;
        println(score);
        timer = 80;
      } else {
        mode = GAMEOVER;
      }
    } else{
    //if (mouseX >= 400 && mouseX <= 800 && mouseY >= 0 && mouseY <= 800) {
      if (puzzle == false) {
        score++;
        println(score);
        timer = 80;
      } else {
        mode = GAMEOVER;
      }
    }
  }
}





void keyPressed() {
  if (mode == GAME) {
    if (keyCode == LEFT) {
      if (puzzle == true) {
        score++;
        timer = 80;
      } else {
        mode = GAMEOVER;
      }
    }

    if (keyCode == RIGHT) {
      if (puzzle == false) {
        score++;
        timer = 80;
      } else {
        mode = GAMEOVER;
      }
    }
  }


  if (mode == GAMEOVER) {
    if (keyCode == ' ') {
      mode = INTRO;
    }
  }
}
