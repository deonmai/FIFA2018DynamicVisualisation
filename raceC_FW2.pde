void CraceSTTWO(String[] players, float[] speeds, color col) {
  //   image(grapht,450,375,800,600);
  rectMode(CORNER);
  noStroke();
  fill(255);


  //hovering over bars function
  for (int i = 0; i < players.length; i++) {
    if (mouseX>=700 && mouseX <= 700+xlengthC && mouseY> ((ylengthC/10)*i+142) && mouseY < ((ylengthC/10)*i+140+(ylengthC/10))) {
      fill(col);
      rect(700, ((ylengthC/10)*i+141), xlengthC, ylengthC/10);
    }
  }


  image(rebic, 1185, 615, 65, 65);


  image(ronaldo, 1205, 566, 65, 65);


  image(hazard, 1140, 515, 65, 65);


  image(lozano, 470+630, 465, 65, 65);


  image(heechan, 470+630, 415, 65, 65);

  image(cuadrado, 455+630, 365, 65, 65);


  image(mbappe, 510+630, 315, 65, 65);


  image(rashford, 425+630, 265, 65, 65);


  image(neymar, 425+630, 215, 65, 65);


  image(willian, 425+630, 165, 65, 65);


  //displaying players
  textFont(defBold, 20);
  fill(color(#F00064));
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
