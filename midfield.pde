void drawMF() {
  fill(255);
  background(#E1FFDE);
  textAlign(CENTER);
  textFont(dusha);
  textSize(80);
  fill(0);
  text("MIDFIELDERS", 650, 80);

  //back button
  fill(255);
  noStroke();
  rect(60, 35, 100, 50, 50);

  if (mouseX >= 10 && mouseX<=110 && mouseY <=60 && mouseY >=10) {  
    fill(#00E843);
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
    fill(#00E843);
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

    fill(#00E843);
    if ((mouseX<=250 && mouseX>=50 && mouseY>=750 && mouseY<=800) || keypasses == true) {
      rect(150, 775, 200, 50, 50);
    }
    if ((mouseX<=525 && mouseX>=325 && mouseY>=750 && mouseY<=800) || takeons == true) {
      rect(425, 775, 200, 50, 50);
    }
    if ((mouseX<=800 && mouseX>=600 && mouseY>=750 && mouseY<=800) || progruns == true) {
      rect(700, 775, 200, 50, 50);
    }

    fill(0);
    textSize(20);
    textAlign(CENTER);
    text("KEY PASSES", 150, 780);

    text("TAKE-ONS", 425, 780);  

    text("PROG. RUNS", 700, 780);


    //weighted leaderboard
    //frame
    strokeWeight(1);
    stroke(0);
    fill(#00E843);
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
    text("P. COUTINHO", 865, 410);
    text("4.61", 1165, 410);
    text("ISCO", 865, 460);
    text("4.59", 1165, 460);
    text("T. KROOS", 865, 510);
    text("4.40", 1165, 510);
    text("L. MODRIC", 865, 560);
    text("3.16", 1165, 560);
    text("K. DE BRUYNE", 865, 610);
    text("2.87", 1165, 610);


    //displaying weightings

    if (keypasses == true) {
      textSize(35);
      text("WEIGHTING: 0.33", 90, 180);

      textSize(18);
      text("The number of passes made that placed the team\nin an advantageous attacking position.", 850, 665);
    }
    if (takeons == true) {
      textSize(35);
      text("WEIGHTING: 0.33", 90, 180);

      textSize(18);
      text("The number of times the player managed to\nsuccessfully dribble around an opposing\nplayer.", 850, 665);
    }
    if (progruns == true) {
      textSize(35);
      text("WEIGHTING: 0.33", 90, 180);

      textSize(18);
      text("The number of times where the player managed\nto dribble the ball into open space going\nforward, putting the team in an advantageous\nattacking position.", 850, 665);
    }
  } else {
    rect(150, 775, 150, 50, 50);
    rect(325, 775, 150, 50, 50);
    rect(505, 775, 150, 50, 50);
    fill(#00E843);
    if ((mouseX<=225 && mouseX>=75 && mouseY>=750 && mouseY<=800) || keypasses == true) {
      rect(150, 775, 150, 50, 50);
    }
    if ((mouseX<=400 && mouseX>=250 && mouseY>=750 && mouseY<=800) || takeons == true) {
      rect(325, 775, 150, 50, 50);
    }
    if ((mouseX<=580 && mouseX>=430 && mouseY>=750 && mouseY<=800) || progruns == true) {
      rect(505, 775, 150, 50, 50);
    }

    fill(0);
    textSize(16);
    textAlign(CENTER);
    text("KEY PASSES", 150, 780);

    text("TAKE-ONS", 325, 780);  

    text("PROG. RUNS", 505, 780);

    fill(255);
    rect(785, 775, 150, 50, 50);
    rect(960, 775, 150, 50, 50);
    rect(1135, 775, 150, 50, 50);
    fill(#00E843);
    if ((mouseX<=860 && mouseX>=710 && mouseY>=750 && mouseY<=800) || Ckeypasses == true) {
      rect(785, 775, 150, 50, 50);
    }
    if ((mouseX<=1035 && mouseX>=885 && mouseY>=750 && mouseY<=800) || Ctakeons == true) {
      rect(960, 775, 150, 50, 50);
    }
    if ((mouseX<=1210 && mouseX>=1060 && mouseY>=750 && mouseY<=800) || Cprogruns == true) {
      rect(1135, 775, 150, 50, 50);
    }
    fill(0);
    textSize(16);
    text("KEY PASSES", 785, 780);

    text("TAKE-ONS", 960, 780);  

    text("PROG. RUNS", 1135, 780);
  }
}
