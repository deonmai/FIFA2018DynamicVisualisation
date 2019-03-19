void raceWB(String[] players, float[] speeds, color col) {
  rectMode(CORNER);
  noStroke();


  //hovering over bars function
  for (int i = 0; i < players.length; i++) {
    if (mouseX>=70 && mouseX <= 70+xlength && mouseY> ((ylength/10)*i+142) && mouseY < ((ylength/10)*i+140+(ylength/10))) {
      fill(col);
      rect(70, ((ylength/10)*i+141), xlength, ylength/10);

      textFont(defBold);
      textSize(62);
      fill(0);
      textAlign(BASELINE);
      text(players[i], 850, 200);

      textSize(52);
      text(nf(speeds[i], 0, 1) + " KM/H", 850, 260);
    }
  }

  fill(255);
  //  rect(70, (ylength/10)*9+150, 5.7*xPosWB, 30, 0, 50, 50, 0);
  image(arias, 70+(5.7*xPosWB), 615, 65, 65);

  //  rect(70, (ylength/10)*8+150, 4*xPosWB, 30, 0, 50, 50, 0);
  image(haddadi, 70+(4*xPosWB), 566, 65, 65);

  //rect(70, (ylength/10)*7+150, 5.46*xPosWB, 30, 0, 50, 50, 0);
  image(walker, 70+(5.46*xPosWB), 515, 65, 65);

  //rect(70, (ylength/10)*6+150, 4*xPosWB, 30, 0, 50, 50, 0);
  image(alba, 70+(4*xPosWB), 465, 65, 65);

  // rect(70, (ylength/10)*5+150, 4.833*xPosWB, 30, 0, 50, 50, 0);
  image(mojica, 70+(4.833*xPosWB), 415, 65, 65);

  //  rect(70, (ylength/10)*4+150, 3.583*xPosWB, 30, 0, 50, 50, 0);
  image(sakai, 70+(3.583*xPosWB), 365, 65, 65);

  //  rect(70, (ylength/10)*3+150, 4*xPosWB, 30, 0, 50, 50, 0);
  image(salvio, 70+(4*xPosWB), 315, 65, 65);

  //  rect(70, (ylength/10)*2+150, 5.25*xPosWB, 30, 0, 50, 50, 0);
  image(carvajal, 70+(5.25*xPosWB), 265, 65, 65);

  //  rect(70, (ylength/10)*1+150, 4.833*xPosWB, 30, 0, 50, 50, 0);
  image(beresinki, 70+(4.833*xPosWB), 215, 65, 65);

  // rect(70, (ylength/10)*0+150, 4.42*xPosWB, 30, 0, 50, 50, 0);
  image(hakimi, 70+(4.42*xPosWB), 165, 65, 65);


  //displaying players
  textFont(defBold, 20);
  textAlign(LEFT);
  for (int i = 0; i < players.length; i++) {
    if (mouseX>=70 && mouseX <= 70+xlength && mouseY> ((ylength/10)*i+142) && mouseY < ((ylength/10)*i+140+(ylength/10))) {
      fill(255);
      text(i + ": " + nf(speeds[i], 0, 1), 80, (ylength/10)*i+175);
    } else {
      fill(color(#05B27F));
      text(i + ": " + players[i].toUpperCase(), 80, (ylength/10)*i+175);
    }
  }

  if (xPosWB>=120) {
  }

  //information
  //fill(0);
  //textSize(38);
  //textAlign(BASELINE);
  //text("Hover over a player to\nreveal their speeds!", 850, 175);

  strokeWeight(5);
  stroke(0);
  //y axis
  line(70, 140, 70, 140+ylength);
  //x axis
  line(70, 140+ylength, 70+xlength, 140+ylength);
  line(70, 140, 70+xlength, 140);

  //horizontal lines 
  for (int i = 0; i < 10; i++) {
    strokeWeight(0.3);
    stroke(50);
    line(70, (ylength/10)*i+140, 70+xlength, (ylength/10)*i+140);

    strokeWeight(5);
    stroke(10);
    line(70, (ylength/10)*i+140, 65, (ylength/10)*i+140);
  }
}
