void intro() {
  score = 0;
  timer = maxTime;

  //gif
  image(introGif[f], 0, 0, width, height);
  f++;
  if (f == gifFrames) f = 0;

  //title
  fill(0);
  textFont(bagus);
  text("Colo(u)r Game!", 400, 300);

  //subtitle
  textFont(bravary);
  text("Click anywhere", 400, 600);
  text("to begin!", 400, 680);


  //println(0.1f+0.2f==0.3f); in java its false
}
