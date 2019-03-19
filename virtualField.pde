void virtualField() {
  background(#1EA55C);
  image(Field, width/2, height/2, 900, 780);
  strokeWeight(10);


  //drawing box around player if mouse is hovered over
  //GK
  if (mouseX <= 707 && mouseX >= 593 && mouseY >=655 && mouseY <= 787) {
    stroke(#FF8F05);
    fill(#FF8F05);
    rect(width/2, 720, 115, 125);
  }

  //ST
  if (mouseX <= 707 && mouseX >= 593 && mouseY >=40 && mouseY <= 190) {
    stroke(#FF1A57);
    fill(#FF1A57);
    rect(width/2, 111, 116, 143);
  }

  //CB
  if ((mouseX <= 830 && mouseX >= 700 && mouseY <= 650 && mouseY >= 505) || (mouseX<=600 && mouseX>=470 && mouseY>=505 && mouseY <= 650)) {
    stroke(#4091FF);
    fill(#4091FF);
    rect(535, 575, 115, 140);
    rect(765, 575, 115, 140);
  }

  //CM
  if ((mouseX<= 885 && mouseX >= 745 && mouseY >= 277 && mouseY <= 420) || (mouseX<=717 && mouseX>=593 && mouseY<=420 && mouseY>=277) || (mouseX<= 545 && mouseX >= 415 && mouseY >= 277 && mouseY <= 420)) {
    stroke(#8FFF40);
    fill(#8FFF40);
    rect(820, 345, 115, 135);
    rect(480, 345, 115, 135);
    rect(650, 345, 115, 135);
  }

  //WINGERS
  if ( (mouseX <= 915 && mouseX >=793 && mouseY <=240 && mouseY>=100) || (mouseX <=515 && mouseX>=393 && mouseY >=100 && mouseY <=240) ) {
    stroke(#F93BFC);
    fill(#F93BFC);
    rect(850, 165, 115, 130);
    rect(450, 165, 115, 130);
  }

  //WINGBACKS
  if ( (mouseX >=285 && mouseX<=395 && mouseY<=615 && mouseY>=485) || (mouseX >=905 && mouseX<=1015 && mouseY<=615 && mouseY>=485) ) {
    stroke(#15D6E5);
    fill(#15D6E5);
    rect(340, 550, 105, 130);
    rect(960, 550, 105, 130);
  }

  //drawing players
  image(KasperS, width/2, 717);
  image(Ronaldo, width/2, 110);
  image(RVarane, 765, 572);
  image(PCoutinho, 820, 342);
  image(MHummels, 535, 572);
  image(Isco, 480, 342);
  image(TKroos, 650, 342);
  image(Mbappe, 850, 160);
  image(EHazard, 450, 160);
  image(SArias, 340, 550);
  image(Pavard, 960, 550);
  
  
  //information button
 if(mouseX<= 1280 && mouseX>=1220 && mouseY >= 15 && mouseY<=75){
   fill(255);
 }else{
  fill(100,255,150);
 }
  noStroke();
  rect(1250,45,60,60);
    textFont(dusha);
    textSize(75);
  fill(255);
  textAlign(CENTER);
  text("i",1250,67);
  
}
