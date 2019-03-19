void CraceWBTWO(String[] players, float[] speeds, color col) {
  rectMode(CORNER);
  noStroke();


  //hovering over bars function
  for (int i = 0; i < players.length; i++) {
    if (mouseX>=700 && mouseX <= 700+xlengthC && mouseY> ((ylengthC/10)*i+142) && mouseY < ((ylengthC/10)*i+140+(ylengthC/10))) {
      fill(col);
      rect(700, ((ylengthC/10)*i+141), xlengthC, ylengthC/10);
    }
  }

  fill(255);
  //  rect(70, (ylengthC/10)*9+150, 5.7*xPosWB, 30, 0, 50, 50, 0);
  image(arias, 1205, 615, 65, 65);

  //  rect(70, (ylengthC/10)*8+150, 4*xPosWB, 30, 0, 50, 50, 0);
  image(haddadi, 1040, 566, 65, 65);

  //rect(70, (ylengthC/10)*7+150, 5.46*xPosWB, 30, 0, 50, 50, 0);
  image(walker, 1180, 515, 65, 65);

  //rect(70, (ylengthC/10)*6+150, 4*xPosWB, 30, 0, 50, 50, 0);
  image(alba, 1040, 465, 65, 65);

  // rect(70, (ylengthC/10)*5+150, 4.833*xPosWB, 30, 0, 50, 50, 0);
  image(mojica, 1100, 415, 65, 65);

  //  rect(70, (ylengthC/10)*4+150, 3.583*xPosWB, 30, 0, 50, 50, 0);
  image(sakai, 1010, 365, 65, 65);

  //  rect(70, (ylengthC/10)*3+150, 4*xPosWB, 30, 0, 50, 50, 0);
  image(salvio, 1040, 315, 65, 65);

  //  rect(70, (ylengthC/10)*2+150, 5.25*xPosWB, 30, 0, 50, 50, 0);
  image(carvajal, 1140, 265, 65, 65);

  //  rect(70, (ylengthC/10)*1+150, 4.833*xPosWB, 30, 0, 50, 50, 0);
  image(beresinki, 1100, 215, 65, 65);

  // rect(70, (ylengthC/10)*0+150, 4.42*xPosWB, 30, 0, 50, 50, 0);
  image(hakimi, 1080, 165, 65, 65);


  //displaying players
  textFont(defBold, 20);
  textAlign(LEFT);
  for (int i = 0; i < players.length; i++) {
    if (mouseX>=700 && mouseX <= 700+xlengthC && mouseY> ((ylengthC/10)*i+142) && mouseY < ((ylengthC/10)*i+140+(ylengthC/10))) {
      fill(255);
      text(i + ": " + nf(speeds[i], 0, 1), 710, (ylength/10)*i+175);
    } else {
      fill(col);
      text(i + ": " + players[i].toUpperCase(), 710, (ylength/10)*i+175);
    }
  }

  strokeWeight(5);
  stroke(0);
  //y axis
  line(700, 140, 700, 140+ylengthC);
  //x axis
  line(700, 140+ylengthC, 700+xlengthC, 140+ylengthC);
  line(700, 140, 700+xlengthC, 140);

  //horizontal lines 
  for (int i = 0; i < 10; i++) {
    strokeWeight(0.3);
    stroke(50);
    line(700, (ylengthC/10)*i+140, 700+xlengthC, (ylengthC/10)*i+140);

    strokeWeight(5);
    stroke(10);
    line(700, (ylengthC/10)*i+140, 695, (ylengthC/10)*i+140);
  }
}
