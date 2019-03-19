void CraceST(String[] players, float[] speeds, color col) {
  //   image(grapht,450,375,800,600);
  rectMode(CORNER);
  noStroke();
  fill(255);


  //hovering over bars function
  for (int i = 0; i < players.length; i++) {
    if (mouseX>=70 && mouseX <= 70+xlengthC && mouseY> ((ylengthC/10)*i+142) && mouseY < ((ylengthC/10)*i+140+(ylengthC/10))) {
      fill(col);
      rect(70, ((ylengthC/10)*i+141), xlengthC, ylengthC/10);
    }
  }


  image(rebic, 555, 615, 65, 65);


  image(ronaldo, 575, 566, 65, 65);


  image(hazard, 510, 515, 65, 65);


  image(lozano, 470, 465, 65, 65);


  image(heechan, 470, 415, 65, 65);

  image(cuadrado, 455, 365, 65, 65);


  image(mbappe, 510, 315, 65, 65);


  image(rashford, 425, 265, 65, 65);


  image(neymar, 425, 215, 65, 65);


  image(willian, 425, 165, 65, 65);


  //displaying players
  textFont(defBold, 20);
  fill(color(#F00064));
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
