void intro() {

  
  //gif
  image(introGif[f], 0, 0, width, height);
  f++;
  if (f == gifFrames) f = 0;

  fill(0);
  textSize(60);
  text("Colo(u)r Game!", 400, 300);


  //println(timer);
}
