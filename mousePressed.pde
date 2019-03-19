void mousePressed() {
  if (virtualField == true) {
    if (mouseX <= 707 && mouseX >= 593 && mouseY >=655 && mouseY <= 787) {
      virtualField = false;
      goalKeeper = true;
    }

    if (mouseX <= 707 && mouseX >= 593 && mouseY >=40 && mouseY <= 190) {
      virtualField = false;
      striker = true;
    }

    if ((mouseX <= 830 && mouseX >= 700 && mouseY <= 650 && mouseY >= 505) || (mouseX<=600 && mouseX>=470 && mouseY>=505 && mouseY <= 650)) {
      virtualField = false;
      centreback = true;
    }

    if ((mouseX<= 885 && mouseX >= 745 && mouseY >= 277 && mouseY <= 420) || (mouseX<=717 && mouseX>=593 && mouseY<=420 && mouseY>=277) || (mouseX<= 545 && mouseX >= 415 && mouseY >= 277 && mouseY <= 420)) {
      virtualField = false;
      midfield = true;
    }

    if ( (mouseX <= 915 && mouseX >=793 && mouseY <=240 && mouseY>=100) || (mouseX <=515 && mouseX>=393 && mouseY >=100 && mouseY <=240) ) {
      virtualField = false;
      wingers = true;
    }

    if ( (mouseX >=285 && mouseX<=395 && mouseY<=615 && mouseY>=485) || (mouseX >=905 && mouseX<=1015 && mouseY<=615 && mouseY>=485) ) {
      virtualField = false;
      wingbacks = true;
    }

    if (mouseX<= 1280 && mouseX>=1220 && mouseY >= 15 && mouseY<=75) {
      info = true;
      virtualField = false;
    }
  }

  if (info == true) {
    //back button
    if (mouseX >= 10 && mouseX <= 110 && mouseY <= 60 && mouseY >= 10) {
      info = false;
      virtualField = true;
    }
  }

  //first is back buttons
  //second is toggling between graphs when compare is off
  //third is compare button
  //fourth is toggling between graphs when compare is on

  if (goalKeeper == true) {
    if (mouseX >= 10 && mouseX <= 110 && mouseY <= 60 && mouseY >= 10) {
      goalKeeper = false;
      virtualField = true;
    }
    //
    if (compare == false) {
      if (mouseX<=250 && mouseX>=50 && mouseY>=750 && mouseY<=800) {
        saverate = true;
        saves = false;
        cleansheets = false;
      }
      if (mouseX<=525 && mouseX>=325 && mouseY>=750 && mouseY<=800) {
        saves = true;
        saverate = false;
        cleansheets = false;
      }
      if (mouseX<=800 && mouseX>=600 && mouseY>=750 && mouseY<=800) {
        cleansheets = true;
        saves = false;
        saverate = false;
      }
    }
    //
    if (mouseX>=165 && mouseX <=315 && mouseY<=60 && mouseY >= 10) {
      compare = !compare;
    }
    //
    if (compare == true) {
      if ((mouseX<=225 && mouseX>=75 && mouseY>=750 && mouseY<=800)) {
        saverate = true;
        saves = false;
        cleansheets = false;
      }
      if ((mouseX<=400 && mouseX>=250 && mouseY>=750 && mouseY<=800)) {
        saves = true;
        saverate = false;
        cleansheets = false;
      }
      if ((mouseX<=580 && mouseX>=430 && mouseY>=750 && mouseY<=800)) {
        cleansheets = true;
        saves = false;
        saverate = false;
      }
      if ((mouseX<=860 && mouseX>=710 && mouseY>=750 && mouseY<=800)) {
        Csaverate = true;
        Csaves = false;
        Ccleansheets = false;
      }
      if ((mouseX<=1035 && mouseX>=885 && mouseY>=750 && mouseY<=800)) {
        Csaves = true;
        Csaverate = false;
        Ccleansheets = false;
      }
      if ((mouseX<=1210 && mouseX>=1060 && mouseY>=750 && mouseY<=800)) {
        Ccleansheets = true;
        Csaves = false;
        Csaverate = false;
      }
    }
  }

  if (centreback == true) {
    if (mouseX >= 10 && mouseX <= 110 && mouseY <= 60 && mouseY >= 10) {
      centreback = false;
      virtualField = true;
    }

    if (compare == false) {
      if (mouseX<=250 && mouseX>=50 && mouseY>=750 && mouseY<=800) {
        interceptions = true;
        tackles = false;
        clearances = false;
      }
      if (mouseX<=525 && mouseX>=325 && mouseY>=750 && mouseY<=800) {
        tackles = true;
        interceptions = false;
        clearances = false;
      }
      if (mouseX<=800 && mouseX>=600 && mouseY>=750 && mouseY<=800) {
        clearances = true;
        tackles = false;
        interceptions = false;
      }
    }
    if (mouseX>=165 && mouseX <=315 && mouseY<=60 && mouseY >= 10) {
      compare = !compare;
    }

    if (compare == true) {
      if ((mouseX<=225 && mouseX>=75 && mouseY>=750 && mouseY<=800)) {
        interceptions = true;
        tackles = false;
        clearances = false;
      }
      if ((mouseX<=400 && mouseX>=250 && mouseY>=750 && mouseY<=800)) {
        tackles = true;
        interceptions = false;
        clearances = false;
      }
      if ((mouseX<=580 && mouseX>=430 && mouseY>=750 && mouseY<=800)) {
        clearances = true;
        tackles = false;
        interceptions = false;
      }

      if ((mouseX<=860 && mouseX>=710 && mouseY>=750 && mouseY<=800)) {
        Cinterceptions = true;
        Ctackles = false;
        Cclearances = false;
      }
      if ((mouseX<=1035 && mouseX>=885 && mouseY>=750 && mouseY<=800)) {
        Ctackles = true;
        Cinterceptions = false;
        Cclearances = false;
      }
      if ((mouseX<=1210 && mouseX>=1060 && mouseY>=750 && mouseY<=800)) {
        Cclearances = true;
        Ctackles = false;
        Cinterceptions = false;
      }
    }
  }

  if (midfield == true) {
    if (mouseX >= 10 && mouseX <= 110 && mouseY <= 60 && mouseY >= 10) {
      midfield = false;
      virtualField = true;
    }

    if (compare == false) {
      if (mouseX<=250 && mouseX>=50 && mouseY>=750 && mouseY<=800) {
        keypasses = true;
        takeons = false;
        progruns = false;
      }
      if (mouseX<=525 && mouseX>=325 && mouseY>=750 && mouseY<=800) {
        takeons = true;
        keypasses = false;
        progruns = false;
      }
      if (mouseX<=800 && mouseX>=600 && mouseY>=750 && mouseY<=800) {
        progruns = true;
        takeons = false;
        keypasses = false;
      }
    }
    if (mouseX>=165 && mouseX <=315 && mouseY<=60 && mouseY >= 10) {
      compare = !compare;
    }

    if (compare == true) {
      if ((mouseX<=225 && mouseX>=75 && mouseY>=750 && mouseY<=800)) {
        keypasses = true;
        takeons = false;
        progruns = false;
      }
      if ((mouseX<=400 && mouseX>=250 && mouseY>=750 && mouseY<=800)) {
        takeons = true;
        keypasses = false;
        progruns = false;
      }
      if ((mouseX<=580 && mouseX>=430 && mouseY>=750 && mouseY<=800)) {
        progruns = true;
        takeons = false;
        keypasses = false;
      }

      if ((mouseX<=860 && mouseX>=710 && mouseY>=750 && mouseY<=800)) {
        Ckeypasses = true;
        Ctakeons = false;
        Cprogruns = false;
      }
      if ((mouseX<=1035 && mouseX>=885 && mouseY>=750 && mouseY<=800)) {
        Ctakeons = true;
        Ckeypasses = false;
        Cprogruns = false;
      }
      if ((mouseX<=1210 && mouseX>=1060 && mouseY>=750 && mouseY<=800)) {
        Cprogruns = true;
        Ctakeons = false;
        Ckeypasses = false;
      }
    }
  }

  if (wingers == true) {
    if (mouseX >= 10 && mouseX <= 110 && mouseY <= 60 && mouseY >= 10) {
      wingers = false;
      virtualField = true;
    }

    if (compare == false) {
      if (mouseX<=250 && mouseX>=50 && mouseY>=750 && mouseY<=800) {
        cross = true;
        progrunsWG = false;
        goalsWG = false;
      }
      if (mouseX<=525 && mouseX>=325 && mouseY>=750 && mouseY<=800) {
        goalsWG = true;
        progrunsWG = false;
        cross = false;
      }
      if (mouseX<=800 && mouseX>=600 && mouseY>=750 && mouseY<=800) {
        progrunsWG = true;
        cross = false;
        goalsWG = false;
      }
    }

    if (mouseX>=165 && mouseX <=315 && mouseY<=60 && mouseY >= 10) {
      compare = !compare;
    }

    if (compare == true) {
      if ((mouseX<=225 && mouseX>=75 && mouseY>=750 && mouseY<=800)) {
        cross = true;
        progrunsWG = false;
        goalsWG = false;
      }
      if ((mouseX<=400 && mouseX>=250 && mouseY>=750 && mouseY<=800)) {
        goalsWG = true;
        progrunsWG = false;
        cross = false;
      }
      if ((mouseX<=580 && mouseX>=430 && mouseY>=750 && mouseY<=800)) {
        progrunsWG = true;
        cross = false;
        goalsWG = false;
      }

      if ((mouseX<=860 && mouseX>=710 && mouseY>=750 && mouseY<=800)) {
        Ccross = true;
        CprogrunsWG = false;
        CgoalsWG = false;
      }
      if ((mouseX<=1035 && mouseX>=885 && mouseY>=750 && mouseY<=800)) {
        CgoalsWG = true;
        CprogrunsWG = false;
        Ccross = false;
      }
      if ((mouseX<=1210 && mouseX>=1060 && mouseY>=750 && mouseY<=800)) {
        CprogrunsWG = true;
        Ccross = false;
        CgoalsWG = false;
      }
    }
  }

  if (wingbacks == true) {

    if (mouseX >= 10 && mouseX <= 110 && mouseY <= 60 && mouseY >= 10) {
      wingbacks = false;
      virtualField = true;
    }

    if (compare == false) {
      if (mouseX<=250 && mouseX>=50 && mouseY>=750 && mouseY<=800) {
        blocks = true;
        raceWB = false;
        tacklesWB = false;
      }
      if (mouseX<=525 && mouseX>=325 && mouseY>=750 && mouseY<=800) {
        tacklesWB = true;
        blocks = false;
        raceWB = false;
      }
      if (mouseX<=800 && mouseX>=600 && mouseY>=750 && mouseY<=800) {
        raceWB = true;
        tacklesWB = false;
        blocks = false;
      }
    }

    if (mouseX>=165 && mouseX <=315 && mouseY<=60 && mouseY >= 10) {
      compare = !compare;
    }

    if (compare == true) {
      if ((mouseX<=225 && mouseX>=75 && mouseY>=750 && mouseY<=800)) {
        blocks = true;
        raceWB = false;
        tacklesWB = false;
      }
      if ((mouseX<=400 && mouseX>=250 && mouseY>=750 && mouseY<=800)) {
        tacklesWB = true;
        blocks = false;
        raceWB = false;
      }
      if ((mouseX<=580 && mouseX>=430 && mouseY>=750 && mouseY<=800)) {
        raceWB = true;
        tacklesWB = false;
        blocks = false;
      }

      if ((mouseX<=860 && mouseX>=710 && mouseY>=750 && mouseY<=800)) {
        Cblocks = true;
        CraceWB = false;
        CtacklesWB = false;
      }
      if ((mouseX<=1035 && mouseX>=885 && mouseY>=750 && mouseY<=800)) {
        CtacklesWB = true;
        Cblocks = false;
        CraceWB = false;
      }
      if ((mouseX<=1210 && mouseX>=1060 && mouseY>=750 && mouseY<=800)) {
        CraceWB = true;
        CtacklesWB = false;
        Cblocks = false;
      }
    }
  }

  if (striker == true) {
    if (mouseX >= 10 && mouseX <= 110 && mouseY <= 60 && mouseY >= 10) {
      striker = false;
      virtualField = true;
    }

    if (compare == false) {
      if (mouseX<=250 && mouseX>=50 && mouseY>=750 && mouseY<=800) {
        goalsST = true;
        raceST = false;
        boxtouch = false;
      }
      if (mouseX<=525 && mouseX>=325 && mouseY>=750 && mouseY<=800) {
        boxtouch = true;
        goalsST = false;
        raceST = false;
      }
      if (mouseX<=800 && mouseX>=600 && mouseY>=750 && mouseY<=800) {
        raceST = true;
        boxtouch = false;
        goalsST = false;
      }
    }

    if (mouseX>=165 && mouseX <=315 && mouseY<=60 && mouseY >= 10) {
      compare = !compare;
    }

    if (compare == true) {
      if ((mouseX<=225 && mouseX>=75 && mouseY>=750 && mouseY<=800)) {
        goalsST = true;
        raceST = false;
        boxtouch = false;
      }
      if ((mouseX<=400 && mouseX>=250 && mouseY>=750 && mouseY<=800)) {
        boxtouch = true;
        goalsST = false;
        raceST = false;
      }
      if ((mouseX<=580 && mouseX>=430 && mouseY>=750 && mouseY<=800)) {
        raceST = true;
        boxtouch = false;
        goalsST = false;
      }

      if ((mouseX<=860 && mouseX>=710 && mouseY>=750 && mouseY<=800)) {
        CgoalsST = true;
        CraceST = false;
        Cboxtouch = false;
      }
      if ((mouseX<=1035 && mouseX>=885 && mouseY>=750 && mouseY<=800)) {
        Cboxtouch = true;
        CgoalsST = false;
        CraceST = false;
      }
      if ((mouseX<=1210 && mouseX>=1060 && mouseY>=750 && mouseY<=800)) {
        CraceST = true;
        Cboxtouch = false;
        CgoalsST = false;
      }
    }
  }
}
