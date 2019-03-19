void drawWB() {
  fill(0);
  background(#EAFFFA);
  textAlign(CENTER);
  textFont(dusha);
  textSize(80);
  text("WING-BACKS", 650, 80);

  //back button
  fill(255);
  noStroke();
  rect(60, 35, 100, 50, 50);

  if (mouseX >= 10 && mouseX<=110 && mouseY <=60 && mouseY >=10) {  
    fill(#02CBB2);
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
    fill(#02CBB2);
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

    fill(#02CBB2);
    if ((mouseX<=250 && mouseX>=50 && mouseY>=750 && mouseY<=800) || blocks == true) {
      rect(150, 775, 200, 50, 50);
    }
    if ((mouseX<=525 && mouseX>=325 && mouseY>=750 && mouseY<=800) || tacklesWB == true) {
      rect(425, 775, 200, 50, 50);
    }
    if ((mouseX<=800 && mouseX>=600 && mouseY>=750 && mouseY<=800) || raceWB == true) {
      rect(700, 775, 200, 50, 50);
    }

    fill(0);
    textSize(20);
    textAlign(CENTER);
    text("BLOCKS", 150, 780);

    text("TACKLES", 425, 780);  

    text("THE RACE", 700, 780);

    //weighted leaderboard
    //frame
    strokeWeight(1);
    stroke(0);
    fill(#02CBB2);
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
    text("B. PAVARD", 865, 410);
    text("3.62", 1165, 410);
    text("S. ARIAS", 865, 460);
    text("3.47", 1165, 460);
    text("S. LICHSTEINER", 865, 510);
    text("2.64", 1165, 510);
    text("J. MASCHERANO", 865, 560);
    text("2.60", 1165, 560);
    text("L. HERNANDEZ", 865, 610);
    text("2.31", 1165, 610);


    //displaying weightings
    textSize(35);
    if (blocks == true) {
      textSize(35);
      text("WEIGHTING: 0.4", 90, 180);

      textSize(18);
      text("The number of times the player managed to block\nthe opposing attacker's shot or cross.", 850, 665);
    }
    if (tacklesWB == true) {
      textSize(35);
      text("WEIGHTING: 0.4", 90, 180);

      textSize(18);
      text("The number of successful tackles a player made\nagainst an opponents attacker, resulting in\ntaking the ball away from them.", 850, 665);
    }
    if (raceWB == true) {
      textSize(35);
      text("WEIGHTING: 0.2", 90, 120);

      textSize(18);
      text("The top speeds of the fastest 10 players in\nthe tournament!", 850, 665);
    }
  } else {
    rect(150, 775, 150, 50, 50);
    rect(325, 775, 150, 50, 50);
    rect(505, 775, 150, 50, 50);
    fill(#02CBB2);
    if ((mouseX<=225 && mouseX>=75 && mouseY>=750 && mouseY<=800) || blocks == true) {
      rect(150, 775, 150, 50, 50);
    }
    if ((mouseX<=400 && mouseX>=250 && mouseY>=750 && mouseY<=800) || tacklesWB == true) {
      rect(325, 775, 150, 50, 50);
    }
    if ((mouseX<=580 && mouseX>=430 && mouseY>=750 && mouseY<=800) || raceWB == true) {
      rect(505, 775, 150, 50, 50);
    }

    fill(0);
    textSize(16);
    textAlign(CENTER);
    text("BLOCKS", 150, 780);

    text("TACKLES", 325, 780);  

    text("PACE", 505, 780);


    fill(255);
    rect(785, 775, 150, 50, 50);
    rect(960, 775, 150, 50, 50);
    rect(1135, 775, 150, 50, 50);
    fill(#02CBB2);
    if ((mouseX<=860 && mouseX>=710 && mouseY>=750 && mouseY<=800) || Cblocks == true) {
      rect(785, 775, 150, 50, 50);
    }
    if ((mouseX<=1035 && mouseX>=885 && mouseY>=750 && mouseY<=800) || CtacklesWB == true) {
      rect(960, 775, 150, 50, 50);
    }
    if ((mouseX<=1210 && mouseX>=1060 && mouseY>=750 && mouseY<=800) || CraceWB == true) {
      rect(1135, 775, 150, 50, 50);
    }
    fill(0);
    textSize(16);
    text("BLOCKS", 785, 780);

    text("TACKLES", 960, 780);  

    text("PACE", 1135, 780);
  }
}
