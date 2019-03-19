//PFont dusha = loadFont("dushaFont.ttf"); //<>//

void drawGK() {
  fill(0);
  background(#FFE7C6);
  textAlign(CENTER);
  textFont(dusha);
  textSize(80);
  text("GOALKEEPER", 650, 80);

  //back button
  fill(255);
  noStroke();
  rect(60, 35, 100, 50, 50);

  if (mouseX >= 10 && mouseX<=110 && mouseY <=60 && mouseY >=10) {  
    fill(#FF6831);
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
    fill(#FF6831);
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
    fill(#FF6831);
    if ((mouseX<=250 && mouseX>=50 && mouseY>=750 && mouseY<=800) || saverate == true) {
      rect(150, 775, 200, 50, 50);
    }
    if ((mouseX<=525 && mouseX>=325 && mouseY>=750 && mouseY<=800) || saves == true) {
      rect(425, 775, 200, 50, 50);
    }
    if ((mouseX<=800 && mouseX>=600 && mouseY>=750 && mouseY<=800) || cleansheets == true) {
      rect(700, 775, 200, 50, 50);
    }
    fill(0);
    textSize(20);
    textAlign(CENTER);
    text("SAVE-RATE", 150, 780);

    text("SAVES/GAME", 425, 780);  

    text("CLEAN SHEETS", 700, 780);  

    //weighted leaderboard
    //frame
    strokeWeight(1);
    stroke(0);
    fill(#FF6831);
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
    text("K. SCHMEICHEL", 865, 410);
    text("1.66", 1165, 410);
    text("G. OCHOA", 865, 460);
    text("1.50", 1165, 460);
    text("J. HYEON-WOO", 865, 510);
    text("1.13", 1165, 510);
    text("T. COURTOIS", 865, 560);
    text("1.00", 1165, 560);
    text("D. OSPINA", 865, 610);
    text("0.62", 1165, 610);


    //displaying weightings

    if (saverate == true) {
      textSize(35);
      text("WEIGHTING: 0.5", 90, 180);

      textSize(18);
      text("The percentage of save attempts where the\ngoalkeeper actually saved the shot", 850, 665);
    }
    if (saves == true) {
      textSize(35);
      text("WEIGHTING: 0.3", 90, 180);

      textSize(18);
      text("The total number of saves per game the\ngoalkeeper made.", 850, 665);
    }
    if (cleansheets == true) {
      textSize(35);
      text("WEIGHTING: 0.2", 90, 180);

      textSize(18);
      text("The number of games where the goalkeeper\ndidn't let any goals in.", 850, 665);
    }
  } else {
    rect(150, 775, 150, 50, 50);
    rect(325, 775, 150, 50, 50);
    rect(505, 775, 150, 50, 50);
    fill(#FF6831);
    if ((mouseX<=225 && mouseX>=75 && mouseY>=750 && mouseY<=800) || saverate == true) {
      rect(150, 775, 150, 50, 50);
    }
    if ((mouseX<=400 && mouseX>=250 && mouseY>=750 && mouseY<=800) || saves == true) {
      rect(325, 775, 150, 50, 50);
    }
    if ((mouseX<=580 && mouseX>=430 && mouseY>=750 && mouseY<=800) || cleansheets == true) {
      rect(505, 775, 150, 50, 50);
    }
    fill(0);
    textSize(16);
    textAlign(CENTER);
    text("SAVE-RATE", 150, 780);

    text("SAVES/GAME", 325, 780);  

    text("CLEAN SHEETS", 505, 780);

    fill(255);
    rect(785, 775, 150, 50, 50);
    rect(960, 775, 150, 50, 50);
    rect(1135, 775, 150, 50, 50);
    fill(#FF6831);
    if ((mouseX<=860 && mouseX>=710 && mouseY>=750 && mouseY<=800) || Csaverate == true) {
      rect(785, 775, 150, 50, 50);
    }
    if ((mouseX<=1035 && mouseX>=885 && mouseY>=750 && mouseY<=800) || Csaves == true) {
      rect(960, 775, 150, 50, 50);
    }
    if ((mouseX<=1210 && mouseX>=1060 && mouseY>=750 && mouseY<=800) || Ccleansheets == true) {
      rect(1135, 775, 150, 50, 50);
    }
    fill(0);
    textSize(16);
    text("SAVE-RATE", 785, 780);

    text("SAVES/GAME", 960, 780);  

    text("CLEAN SHEETS", 1135, 780);
  }
}
