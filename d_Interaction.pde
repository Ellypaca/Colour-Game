void mousePressed() {
  if (mode == GAME) {
    if (mouseX >= 0 && mouseX <= 400 && mouseY >= 0 && mouseY <= 800) {
      if (rText == rColor) {
        score++;
        println(score);
        timer = 80;
      } else {
        mode = GAMEOVER;
      }
    } 
    if (mouseX >= 400 && mouseX <= 800 && mouseY >= 0 && mouseY <= 800) {
      if (rText != rColor) {
        score++;
        println(score);
        timer = 80;
      } else {
        mode = GAMEOVER;
      }
    }
  }
}

void mouseReleased() {
  if (mode == INTRO) {
    mode = GAME;
  }
}


void keyPressed() {

}
