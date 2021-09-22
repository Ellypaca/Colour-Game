void gameover() {
  if (score > highscore)
    highscore = score;

  background(#AFAFAF);

  textFont(bagus);
  fill(#662076);
  textSize(75);
  text("GAME OVER", 400, 150);


  textFont(bravaryScript);
  fill(#203976);
  text("Score: " + score, 400, 300);
  fill(#D9DB8B);
  text("Highscore: " + highscore, 400, 400);
  
  fill(#015D5C);
  textFont(bravary);
  textSize(70);
  text("Click anywhere to proceed", 400, 650);

  // textFont(bagus);
}
