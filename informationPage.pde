void drawInfo() {
  fill(255);
  background(#FCFCFC);
  textAlign(CENTER);
  textFont(dusha);
  textSize(80);
  fill(0);
  text("INFORMATION", 650, 80);

  //back button
  textFont(defBold);
  textSize(25);
  noStroke();
  if (mouseX >= 10 && mouseX<=110 && mouseY <=60 && mouseY >=10) {  
    fill(#000000);
    rect(60, 35, 100, 50, 50);
    fill(255);
    text("BACK", 60, 45);
  } else {
    fill(255);
    rect(60, 35, 100, 50, 50);
    fill(0);
    text("BACK", 60, 45);
  }

  //INFORMATION
  fill(0);
  textFont(def);
  textSize(20);
  textAlign(BASELINE);
  text("Welcome to my dynamic visualisation!! Using this, you will be able to see the best players of the FIFA World Cup 2018. To start off,\n" +
    "click on one of the positions seen on the virtual soccer field (each of these players are the ones that came out on top). This will \n" +
    "bring up a 'position screen'. Here you will be able to select certain  metrics, which will draw up graphs displaying the top 15 players\n" +
    "in that metric.\n" +
    "Additionally, you will have the option to 'compare' two different graphs together by selecting the 'COMPARE' button.\n \n" + 
    "Each of the metrics have been converted into a z-score. That is, how many standard deviations the score is from the mean (average)\n" +
    "score. This allows every statistic to be comparable with one another, allowing a more accurate representation of the best players.\n \n" +
    "On the right side of the position screen is the 'Weighted Leaderboard', which shows the Top 5 players in each position. This leaderboard\n" +
    "was determined by giving each metric a certain 'weight', applying this weighting to each player's statistics and adding each metric,\n" +
    "together, therefore giving a weighted score. This way, the best players would have performed well in each category.\n" + 
    "In the 'speed' category, a weighting is applied of the player's top speed divided by 10.\n\n" +
    "Users are able to hover over bars on the bar graphs to display the players, as well as both their z-scores and actual scores related to them."+
    " "
    , 50, 150);
}
