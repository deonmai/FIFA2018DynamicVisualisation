void raceST(String[] players, float[] speeds, color col) {
  //   image(grapht,450,375,800,600);
  rectMode(CORNER);
  noStroke();
  fill(255);


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

  //  rect(70, (ylength/10)*9+150, 5.25*xPosST, 30, 0, 50, 50, 0);
  image(rebic, 70+(5.25*xPosST), 615, 65, 65);

  //rect(70, (ylength/10)*8+150, 5.458*xPosST, 30, 0, 50, 50, 0);
  image(ronaldo, 70+(5.458*xPosST), 566, 65, 65);

  // rect(70, (ylength/10)*7+150, 4.625*xPosST, 30, 0, 50, 50, 0);
  image(hazard, 70+(4.625*xPosST), 515, 65, 65);

  //  rect(70, (ylength/10)*6+150, 4.4167*xPosST, 30, 0, 50, 50, 0);
  image(lozano, 70+(4.4167*xPosST), 465, 65, 65);

  //  rect(70, (ylength/10)*5+150, 4.4167*xPosST, 30, 0, 50, 50, 0);
  image(heechan, 70+(4.4167*xPosST), 415, 65, 65);

  //  rect(70, (ylength/10)*4+150, 4.208*xPosST, 30, 0, 50, 50, 0);
  image(cuadrado, 70+(4.208*xPosST), 365, 65, 65);

  //  rect(70, (ylength/10)*3+150, 4.625*xPosST, 30, 0, 50, 50, 0);
  image(mbappe, 70+(4.625*xPosST), 315, 65, 65);

  // rect(70, (ylength/10)*2+150, 4*xPosST, 30, 0, 50, 50, 0);
  image(rashford, 70+(4*xPosST), 265, 65, 65);

  //  rect(70, (ylength/10)*1+150, 4*xPosST, 30, 0, 50, 50, 0);
  image(neymar, 70+(4*xPosST), 215, 65, 65);

  //  rect(70, (ylength/10)*0+150, 4*xPosST, 30, 0, 50, 50, 0);
  image(willian, 70+(4*xPosST), 165, 65, 65);


  //displaying players
  textFont(defBold, 20);
  fill(color(#F00064));
  textAlign(LEFT);
  for (int i = 0; i < players.length; i++) {
    if (mouseX>=70 && mouseX <= 70+xlength && mouseY> ((ylength/10)*i+142) && mouseY < ((ylength/10)*i+140+(ylength/10))) {
      fill(255);
      text(i + ": " + nf(speeds[i], 0, 1), 80, (ylength/10)*i+175);
    } else {
      fill(col);
      text(i + ": " + players[i].toUpperCase(), 80, (ylength/10)*i+175);
    }
  }

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
