void drawCB() {
  background(#DEF6FF);
  textAlign(CENTER);
  textFont(dusha);
  textSize(80);
  fill(0);
  text("CENTREBACKS", 650, 80);

  //back button
  fill(255);
  noStroke();
  rect(60, 35, 100, 50, 50);
  if (mouseX >= 10 && mouseX<=110 && mouseY <=60 && mouseY >=10) {  
    fill(#0896FF);
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
    fill(#0896FF);
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

    fill(#0896FF);
    if ((mouseX<=250 && mouseX>=50 && mouseY>=750 && mouseY<=800) || interceptions == true) {
      rect(150, 775, 200, 50, 50);
    }
    if ((mouseX<=525 && mouseX>=325 && mouseY>=750 && mouseY<=800) || tackles == true) {
      rect(425, 775, 200, 50, 50);
    }
    if ((mouseX<=800 && mouseX>=600 && mouseY>=750 && mouseY<=800) || clearances == true) {
      rect(700, 775, 200, 50, 50);
    }

    fill(0);
    textSize(20);
    textAlign(CENTER);
    text("INTERCEPTIONS", 150, 780);

    text("TACKLES", 425, 780);  

    text("CLEARANCES", 700, 780);

    //weighted leaderboard
    //frame
    strokeWeight(1);
    stroke(0);
    fill(#0896FF);
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
    text("R. VARANE", 865, 410);
    text("3.94", 1165, 410);
    text("M. HUMMELS", 865, 460);
    text("3.54", 1165, 460);
    text("A. HEGAZY", 865, 510);
    text("3.27", 1165, 510);
    text("J. MASCHERANO", 865, 560);
    text("3.18", 1165, 560);
    text("N. OTAMENDI", 865, 610);
    text("3.07", 1165, 610);


    //displaying weightings
    if (interceptions == true) {
      textSize(35);
      text("WEIGHTING: 0.3", 90, 180);
      
      textSize(18);
      text("The number of times the player managed to get\nin the way of a pass and take possession from\nthe opposing team.", 850, 665);
    }
    if (tackles == true) {
      textSize(35);
      text("WEIGHTING: 0.4", 90, 180);
      textSize(18);
      text("The number of successful tackles a player made\nagainst an opponents attacker, resulting in\ntaking the ball away from them.", 850, 665); 
    }
    if (clearances == true) {
      textSize(35);
      text("WEIGHTING: 0.3", 90, 180);
      textSize(18);
      text("The number of times the defender managed to\nget the ball out of their own box, ending an\nopponents attack.", 850, 665); 
     
    }
  } else {
    rect(150, 775, 150, 50, 50);
    rect(325, 775, 150, 50, 50);
    rect(505, 775, 150, 50, 50);
    fill(#0896FF);
    if ((mouseX<=225 && mouseX>=75 && mouseY>=750 && mouseY<=800) || interceptions == true) {
      rect(150, 775, 150, 50, 50);
    }
    if ((mouseX<=400 && mouseX>=250 && mouseY>=750 && mouseY<=800) || tackles == true) {
      rect(325, 775, 150, 50, 50);
    }
    if ((mouseX<=580 && mouseX>=430 && mouseY>=750 && mouseY<=800) || clearances == true) {
      rect(505, 775, 150, 50, 50);
    }

    fill(0);
    textSize(16);
    textAlign(CENTER);
    text("INTERCEPTIONS", 150, 780);

    text("TACKLES", 325, 780);  

    text("CLEARANCES", 505, 780);

    fill(255);
    rect(785, 775, 150, 50, 50);
    rect(960, 775, 150, 50, 50);
    rect(1135, 775, 150, 50, 50);
    fill(#0896FF);
    if ((mouseX<=860 && mouseX>=710 && mouseY>=750 && mouseY<=800) || Cinterceptions == true) {
      rect(785, 775, 150, 50, 50);
    }
    if ((mouseX<=1035 && mouseX>=885 && mouseY>=750 && mouseY<=800) || Ctackles == true) {
      rect(960, 775, 150, 50, 50);
    }
    if ((mouseX<=1210 && mouseX>=1060 && mouseY>=750 && mouseY<=800) || Cclearances == true) {
      rect(1135, 775, 150, 50, 50);
    }
    fill(0);
    textSize(16);
    text("INTERCEPTIONS", 785, 780);

    text("TACKLES", 960, 780);  

    text("CLEARANCES", 1135, 780);
  }
}
