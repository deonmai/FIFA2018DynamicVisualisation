void CraceWB(String[] players, float[] speeds, color col) {
  rectMode(CORNER);
  noStroke();


  //hovering over bars function
  for (int i = 0; i < players.length; i++) {
    if (mouseX>=70 && mouseX <= 70+xlengthC && mouseY> ((ylengthC/10)*i+142) && mouseY < ((ylengthC/10)*i+140+(ylengthC/10))) {
      fill(col);
      rect(70, ((ylengthC/10)*i+141), xlengthC, ylengthC/10);
    }
  }

  fill(255);
  //  rect(70, (ylengthC/10)*9+150, 5.7*xPosWB, 30, 0, 50, 50, 0);
  image(arias, 575, 615, 65, 65);

  //  rect(70, (ylengthC/10)*8+150, 4*xPosWB, 30, 0, 50, 50, 0);
  image(haddadi, 410, 566, 65, 65);

  //rect(70, (ylengthC/10)*7+150, 5.46*xPosWB, 30, 0, 50, 50, 0);
  image(walker, 550, 515, 65, 65);

  //rect(70, (ylengthC/10)*6+150, 4*xPosWB, 30, 0, 50, 50, 0);
  image(alba, 410, 465, 65, 65);

  // rect(70, (ylengthC/10)*5+150, 4.833*xPosWB, 30, 0, 50, 50, 0);
  image(mojica, 470, 415, 65, 65);

  //  rect(70, (ylengthC/10)*4+150, 3.583*xPosWB, 30, 0, 50, 50, 0);
  image(sakai, 380, 365, 65, 65);

  //  rect(70, (ylengthC/10)*3+150, 4*xPosWB, 30, 0, 50, 50, 0);
  image(salvio, 410, 315, 65, 65);

  //  rect(70, (ylengthC/10)*2+150, 5.25*xPosWB, 30, 0, 50, 50, 0);
  image(carvajal, 510, 265, 65, 65);

  //  rect(70, (ylengthC/10)*1+150, 4.833*xPosWB, 30, 0, 50, 50, 0);
  image(beresinki, 470, 215, 65, 65);

  // rect(70, (ylengthC/10)*0+150, 4.42*xPosWB, 30, 0, 50, 50, 0);
  image(hakimi, 450, 165, 65, 65);


  //displaying players
  textFont(defBold, 20);
  textAlign(LEFT);
  for (int i = 0; i < players.length; i++) {
    if (mouseX>=70 && mouseX <= 70+xlengthC && mouseY> ((ylength/10)*i+142) && mouseY < ((ylength/10)*i+140+(ylength/10))) {
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
  line(70, 140, 70, 140+ylengthC);
  //x axis
  line(70, 140+ylengthC, 70+xlengthC, 140+ylengthC);
  line(70, 140, 70+xlengthC, 140);

  //horizontal lines 
  for (int i = 0; i < 10; i++) {
    strokeWeight(0.3);
    stroke(50);
    line(70, (ylengthC/10)*i+140, 70+xlengthC, (ylengthC/10)*i+140);

    strokeWeight(5);
    stroke(10);
    line(70, (ylengthC/10)*i+140, 65, (ylengthC/10)*i+140);
  }
}
