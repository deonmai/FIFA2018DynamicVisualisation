void drawGraph(String[] players, float[] stats, float[] real, color col, color col2) {
  //grame frame
  fill(0);
  textFont(defBold);
  textSize(25);
  textAlign(CENTER);
  strokeCap(PROJECT);
  // text(title, 50+(xlength/2), 140);
  strokeWeight(5);
  stroke(0);
  //y axis
  line(70, 140, 70, 140+ylength);
  //x axis
  line(70, 140+ylength, 70+xlength, 140+ylength);

  //vertical lines
  strokeWeight(0.3);
  stroke(150);
  for (int i = 0; i < 16; i++) {
    line((xlength/16)*(i)+(2.5*(xlength/16)), 140, (xlength/16)*(i)+(2.5*(xlength/16)), 140+ylength);
  }

  //horizontal lines 
  for (int i = 0; i < 5; i++) {
    strokeWeight(0.3);
    stroke(150);
    line(70, (ylength/5)*i+140, 70+xlength, (ylength/5)*i+140);

    strokeWeight(5);
    stroke(10);
    line(70, (ylength/5)*i+140, 65, (ylength/5)*i+140);
  }

  //displaying players
  for (int i = 0; i < players.length; i++) {
    textAlign(RIGHT);
    textFont(def, 15);
    fill(0);
    pushMatrix();
    float x = (xlength/16)*(i)+(2.5*(xlength/16))+3;
    float y = 155+ylength;
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
    text(nf(interval[i], 0, 1), 60, 505-(ylength/5)*i+140);
  }

  //drawing bars
  rectMode(CORNER);
  for (int i = 0; i < stats.length; i++) {
    noStroke();
    fill(col);
    rect((xlength/16)*(i)+(2.5*(xlength/16))-15, 640 - (stats[i]/maximum)*ylength, 30, 640-(640-(stats[i]/maximum)*ylength+1));
  }


  //hovering over bars function.
  for (int i = 0; i < stats.length; i++) {
    if (mouseX >= ((xlength/16)*(i)+(2.5*(xlength/16))-15) && mouseX<= ((xlength/16)*(i)+(2.5*(xlength/16))+15) && mouseY >= (640 - (stats[i]/maximum)*ylength) && mouseY<= ((640 - (stats[i]/maximum)*ylength)+(640-(640-(stats[i]/maximum)*ylength+1)))) {
      fill(col2);
      rect((xlength/16)*(i)+(2.5*(xlength/16))-15, 640 - (stats[i]/maximum)*ylength, 30, 640-(640-(stats[i]/maximum)*ylength+1));

      textFont(defBold);
      textSize(62);
      fill(0);
      textAlign(BASELINE);
      text(players[i], 850, 190);

      textSize(52);
      text(nf(stats[i], 0, 2), 850, 260);
      textSize(23);
      text("Z-SCORE", 850, 300);

      textAlign(RIGHT);
      textSize(52);
      text(nf(real[i], 0, 2), 1270, 260);

      textSize(23);
      text("ACTUAL SCORE", 1270, 300);
    }
  }
}


// maximum - returns the maximum value in an int array
float maximum(float[] array) {
  float max = array[0];
  for (int j = 0; j < array.length; j++) {
    if (array[j] > max) {
      max = array[j];
    }
  }
  return max;
}
