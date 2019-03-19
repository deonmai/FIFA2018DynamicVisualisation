void drawWG() {
  fill(0);
  background(#FEEDFF);
  textAlign(CENTER);

  //title
  textFont(dusha);
  textSize(80);
  text("WINGERS", 650, 80);

  //back button
  fill(255);
  noStroke();
  rect(60, 35, 100, 50, 50);

  if (mouseX >= 10 && mouseX<=110 && mouseY <=60 && mouseY >=10) {  
    fill(#EE08FF);
    rect(60, 35, 100, 50, 50);
  }

  textFont(defBold);
  textSize(25);
  fill(0);
  text("BACK", 60, 45);


  //COMPARE button
  fill(255);
  rect(240, 35, 150, 50, 50);
  if (mouseX>=165 && mouseX <=315 && mouseY<=60 && mouseY >= 10) {
    fill(#EE08FF);
    rect(240, 35, 150, 50, 50);
  }
  fill(0);
  if (compare == false) {
    text("COMPARE", 240, 45);
  } else {
    text("STOP", 240, 45);
  }

  //buttons to toggle between graphs. 
  fill(255);
  if (compare == false) {

    rect(150, 775, 200, 50, 50);
    rect(425, 775, 200, 50, 50);
    rect(700, 775, 200, 50, 50);

    fill(#EE08FF);
    if ((mouseX<=250 && mouseX>=50 && mouseY>=750 && mouseY<=800) || cross == true) {
      rect(150, 775, 200, 50, 50);
    }
    if ((mouseX<=525 && mouseX>=325 && mouseY>=750 && mouseY<=800) || goalsWG == true) {
      rect(425, 775, 200, 50, 50);
    }
    if ((mouseX<=800 && mouseX>=600 && mouseY>=750 && mouseY<=800) || progrunsWG == true) {
      rect(700, 775, 200, 50, 50);
    }

    fill(0);
    textSize(20);
    textAlign(CENTER);
    text("CROSSES", 150, 780);

    text("GOALS", 425, 780);  

    text("PROG. RUNS", 700, 780);    

    //weighted leaderboard
    //frame
    strokeWeight(1);
    stroke(0);
    fill(#EE08FF);
    rect(1060, 350, 420, 50);
    fill(255);
    rect(1060, 400, 420, 50);
    rect(1060, 450, 420, 50);
    rect(1060, 500, 420, 50);
    rect(1060, 550, 420, 50);
    rect(1060, 600, 420, 50);
    line(1150, 325, 1150, 625);

    //players
    textFont(defBold);
    textSize(25);
    textAlign(LEFT);
    text("LEADERBOARD", 865, 360);
    text("SCORE", 1165, 360);
    fill(0);
    text("K. MBAPPE", 865, 410);
    text("3.71", 1165, 410);
    text("E. HAZARD", 865, 460);
    text("3.48", 1165, 460);
    text("NEYMAR", 865, 510);
    text("3.33", 1165, 510);
    text("M. SALAH", 865, 560);
    text("3.04", 1165, 560);
    text("A. GRIEZMANN", 865, 610);
    text("3.02", 1165, 610);


    //displaying weightings
    if (cross == true) {
      textSize(35);
      text("WEIGHTING: 0.25", 90, 180);

      textSize(18);
      text("The number of times the winger crossed the ball\ninto their attacking box, allowing a chance for\nthe striker to score an aerial goal.", 850, 665);
    }
    if (goalsWG == true) {
      textSize(35);
      text("WEIGHTING: 0.25", 90, 180);

      textSize(18);
      text("The number of goals the winger scored per\ngame, on average.", 850, 665);
    }
    if (progrunsWG == true) {
      textSize(35);
      text("WEIGHTING: 0.25", 90, 180);

      textSize(18);
      text("The number of times where the player managed\nto dribble the ball into open space going\nforward, putting the team in an advantageous\nattacking position.", 850, 665);
    }
  } else {
    rect(150, 775, 150, 50, 50);
    rect(325, 775, 150, 50, 50);
    rect(505, 775, 150, 50, 50);
    fill(#EE08FF);
    if ((mouseX<=225 && mouseX>=75 && mouseY>=750 && mouseY<=800) || cross == true) {
      rect(150, 775, 150, 50, 50);
    }
    if ((mouseX<=400 && mouseX>=250 && mouseY>=750 && mouseY<=800) || goalsWG == true) {
      rect(325, 775, 150, 50, 50);
    }
    if ((mouseX<=580 && mouseX>=430 && mouseY>=750 && mouseY<=800) || progrunsWG == true) {
      rect(505, 775, 150, 50, 50);
    }

    fill(0);
    textSize(16);
    textAlign(CENTER);
    text("CROSSES", 150, 780);

    text("GOALS", 325, 780);  

    text("PROG. RUNS", 505, 780);


    fill(255);
    rect(785, 775, 150, 50, 50);
    rect(960, 775, 150, 50, 50);
    rect(1135, 775, 150, 50, 50);
    fill(#EE08FF);
    if ((mouseX<=860 && mouseX>=710 && mouseY>=750 && mouseY<=800) || Ccross == true) {
      rect(785, 775, 150, 50, 50);
    }
    if ((mouseX<=1035 && mouseX>=885 && mouseY>=750 && mouseY<=800) || CgoalsWG == true) {
      rect(960, 775, 150, 50, 50);
    }
    if ((mouseX<=1210 && mouseX>=1060 && mouseY>=750 && mouseY<=800) || CprogrunsWG == true) {
      rect(1135, 775, 150, 50, 50);
    }
    fill(0);
    textSize(16);
    text("CROSSES", 785, 780);

    text("GOALS", 960, 780);  

    text("PROG. RUNS", 1135, 780);
  }
}
