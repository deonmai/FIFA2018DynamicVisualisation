void drawCGraphTWO(String[] players, float[] stats, color col) {
  //grame frame
  fill(0);
  textFont(defBold);
  textSize(25);
  textAlign(CENTER);
  strokeCap(PROJECT);
  // text(title, 50+(xlengthC/2), 140);
  strokeWeight(5);
  stroke(0);
  //y axis
  line(700, 140, 700, 140+ylengthC);
  //x axis
  line(700, 140+ylengthC, 700+xlengthC, 140+ylengthC);

  //vertical lines
  strokeWeight(0.3);
  stroke(150);
  for (int i = 0; i < 16; i++) {
    line((xlengthC/16)*(i)+(21.35*(xlengthC/16)), 140, (xlengthC/16)*(i)+(21.35*(xlengthC/16)), 140+ylengthC);
  }

  //horizontal lines 
  for (int i = 0; i < 5; i++) {
    strokeWeight(0.3);
    stroke(150);
    line(700, (ylengthC/5)*i+140, 700+xlengthC, (ylengthC/5)*i+140);

    strokeWeight(5);
    stroke(10);
    line(700, (ylengthC/5)*i+140, 695, (ylengthC/5)*i+140);
  }

  //displaying players
  for (int i = 0; i < players.length; i++) {
    textAlign(RIGHT);
    textFont(def, 14);
    fill(0);
    pushMatrix();
    float x = (xlengthC/16)*(i)+(21.35*(xlengthC/16))+3;
    float y = 155+ylengthC;
    translate(x, y);
    rotate(-PI/2.0);
    text(players[i], 0, 0);
    popMatrix();
  }

  //determining y-axis increments
  float maximum = maximum(stats);
  float[] interval = new float[6];
  maximum = ceil(maximum/3); 
  maximum = maximum*3;
  float a = (maximum/5);
  textSize(20);
  for (int i = 0; i < interval.length; i++) {
    textAlign(RIGHT);
    interval[i] = i*a;
    text(nf(interval[i], 0, 1), 690, 505-(ylengthC/5)*i+140);
  }

  //drawing bars
  rectMode(CORNER);
  for (int i = 0; i < stats.length; i++) {
    noStroke();
    fill(col);
    rect((xlengthC/16)*(i)+(21.35*(xlengthC/16))-15, 640 - (stats[i]/maximum)*ylengthC, 30, 640-(640-(stats[i]/maximum)*ylengthC+1));
  }


  //hovering over bars function.
  for (int i = 0; i < stats.length; i++) {
    if (mouseX >= ((xlengthC/16)*(i)+(21.35*(xlengthC/16))-15) && mouseX<= ((xlengthC/16)*(i)+(21.35*(xlengthC/16))+15) && mouseY >= (640 - (stats[i]/maximum)*ylengthC) && mouseY<= ((640 - (stats[i]/maximum)*ylengthC)+(640-(640-(stats[i]/maximum)*ylengthC+1)))) {
      fill(255);
      rect((xlengthC/16)*(i)+(21.35*(xlengthC/16))-15, 640 - (stats[i]/maximum)*ylengthC, 30, 640-(640-(stats[i]/maximum)*ylengthC+1));

      textFont(def);
      textSize(20);
      fill(0);
      text(nf(stats[i], 0, 1), (xlengthC/16)*(i)+(21.35*(xlengthC/16))+15, 630 - (stats[i]/maximum)*ylengthC);
    }
  }
}
