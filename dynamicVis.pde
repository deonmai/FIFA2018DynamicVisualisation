PImage Field;
PImage KasperS;
PImage Ronaldo;
PImage RVarane;
PImage PCoutinho;
PImage MHummels;
PImage Isco;
PImage TKroos;
PImage Mbappe;
PImage EHazard;
PImage Pavard;
PImage SArias;

//race WB
float xPosWB = 0;
PImage graphtemplate;
PImage arias;
PImage haddadi;
PImage walker;
PImage alba;
PImage mojica;  
PImage sakai;
PImage salvio;
PImage carvajal;
PImage beresinki;
PImage hakimi;

//race ST
float xPosST = 0;
PImage grapht;
PImage willian;
PImage neymar;
PImage rashford;
PImage mbappe;
PImage cuadrado;
PImage heechan;
PImage lozano;
PImage hazard;
PImage ronaldo;
PImage rebic;

PFont dusha;
PFont def;
PFont defBold;

boolean virtualField;
boolean info = false;

boolean goalKeeper;
boolean saves = false;
boolean saverate = true;
boolean cleansheets = false;
boolean Csaves = false;
boolean Csaverate = true;
boolean Ccleansheets = false;

boolean striker;
boolean raceST = false;
boolean goalsST = true;
boolean boxtouch = false;
boolean CraceST = false;
boolean CgoalsST = true;
boolean Cboxtouch = false;

boolean centreback;
boolean interceptions;
boolean tackles;
boolean clearances;
boolean Cinterceptions = true;
boolean Ctackles = false;
boolean Cclearances = false;

boolean midfield;
boolean keypasses = true;
boolean takeons = false;
boolean progruns = false;
boolean Ckeypasses = true;
boolean Ctakeons = false;
boolean Cprogruns = false;

boolean wingers;
boolean progrunsWG = false;
boolean cross = true;
boolean goalsWG = false;
boolean CprogrunsWG = false;
boolean Ccross = true;
boolean CgoalsWG = false;

boolean wingbacks;
boolean blocks = true;
boolean raceWB = false;
boolean tacklesWB = false;
boolean Cblocks = true;
boolean CraceWB = false;
boolean CtacklesWB = false;

boolean compare = false;

//default graph properties
float xlength = 750;
float ylength = 500;

//graph properties when comparing
float xlengthC = 550;
float ylengthC = 500;

//gk save rate
String[] gk_saverate_players = {"Navas", "Lloris", "Pickford", "Akinfeev", "Sommer", "Neuer", "Olsen", "Ospina", "Gallese", "Beiranvand", "Muslera", "Ochoa", "Hyeon-Woo", "Courtois", "Schmeichel"};
float[] gk_saverate = {0.2, 0.2, 0.28, 0.42, 0.57, 0.57, 0.77, 0.82, 0.82, 0.82, 0.87, 0.98, 1.01, 1.05, 1.58};
float[] gk_saverate_real = {66.7, 66.7, 68.0, 68.2, 70.6, 73.3, 73.3, 76.9, 77.8, 77.8, 78.6, 80.6, 81.2, 81.8, 91.3};

//gk saves per game
String[] gk_saves_players = {"Ospina", "Subasic", "Sommer", "Penedo", "Akinfeev", "Halldorsson", "Ryan", "Navas", "Kawashima", "Neuer", "Courtois", "Hyeon-Woo", "Mustapha", "Schmeichel", "Ochoa"};
float[] gk_saves = {0.09, 0.09, 0.23, 0.23, 0.23, 0.23, 0.49, 0.49, 0.62, 0.75, 0.9, 1.26, 1.39, 1.97, 2.75};
float[] gk_saves_real = {2.5, 2.5, 3.0, 3.0, 3.0, 3.0, 3.33, 3.33, 3.5, 3.67, 3.86, 4.33, 4.5, 5.25, 6.25};

//gk clean sheets per game
String[] gk_cleansheets_players = {"Patricio", "Ochoa", "De Gea", "Uzoho", "Gallese", "Beiranvand", "Hyeon-Woo", "Muslera", "Subasic", "Courtois", "Olsen", "Schmeichel", "Lloris", "Ospina", "Alisson"};
float[] gk_cleansheets = {0.09, 0.09, 0.09, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1.02, 1.02, 1.38, 1.38, 1.38, 1.89};
float[] gk_cleansheets_real = {0.25, 0.25, 0.25, 0.33, 0.33, 0.33, 0.33, 0.33, 0.33, 0.43, 0.43, 0.5, 0.5, 0.5, 0.6};

//wb blocks
String[] wb_blocks_players = {"Fernandes", "Maaloul", "Sakai", "Tagliafico", "Dalsgaard", "Lustig", "Dirar", "Trauco", "Al-Burayk", "Masherano", "Hernandez", "Lichtsteiner", "Carvajal", "Arias", "Pavard"};
float[] wb_blocks = {0.63, 0.66, 0.69, 0.73, 0.80, 0.83, 1.05, 1.07, 1.21, 1.21, 2.33, 2.42, 2.86, 3.48, 4.44};
float[] wb_blocks_real = {0.29, 0.30, 0.31, 0.32, 0.34, 0.35, 0.42, 0.42, 0.46, 0.46, 0.80, 0.83, 0.95, 1.14, 1.43};

//wb tackles
String[] wb_tackles_players = {"Yong", "Nagatomo", "Fathi", "Cionek", "Gamboa", "Al-Shahrani", "Dalsgaard", "Rodriguez", "Hakimi", "Hernandez", "Lichtsteiner", "Pavard", "Arias", "Hector", "Mascherano"};
float[] wb_tackles = {1.12, 1.21, 1.45, 1.47, 1.49, 1.53, 1.53, 1.56, 1.81, 1.97, 2.75, 3.13, 3.51, 3.57, 3.71};
float[] wb_tackles_real = {1.27, 1.33, 1.47, 1.48, 1.49, 1.52, 1.52, 1.54, 1.69, 1.78, 2.25, 2.48, 2.71, 2.74, 2.83};

//wb race
String[] wb_race_players = {"Hakimi", "Bereszynski", "Carvajal", "Salvio", "Sakai", "Mojica", "Alba", "Walker", "Haddadi", "Arias"};
float[] wb_race = {32.8, 33.1, 33.3, 32.6, 32.4, 33.1, 32.6, 33.5, 32.6, 33.6};

//cb interceptions
String[] cb_intercept_players = {"Mascherano", "Trauco", "Haddadi", "Akanji", "Balogun", "Pique", "Godin", "Hawsawi", "Fonte", "Otamendi", "Gimenez", "Varane", "Hegazy", "Hummels", "Schar"};
float[] cb_intercept = {2.81, 2.82, 2.83, 2.98, 3.09, 3.14, 3.27, 3.35, 3.38, 3.48, 3.55, 3.63, 3.7, 3.79, 3.98};
float[] cb_intercept_real = {2.47, 2.47, 2.48, 2.59, 2.66, 2.70, 2.79, 2.85, 2.87, 2.94, 2.99, 3.04, 3.09, 3.15, 3.29};

//cb tackles
String[] cb_tackles_players = {"Hegazy", "Umtiti", "Alvarez", "Miranda", "Ramos", "Lichtsteiner", "Nacho", "Otamendi", "Hummels", "Al-Shahrani", "Al-Burayk", "Akanji", "Risdon", "Varane", "Mascherano"};
float[] cb_tackles = {2.01, 2.14, 2.28, 2.31, 2.46, 2.75, 2.8, 2.9, 2.9, 3.13, 3.51, 3.51, 3.57, 3.65, 3.71};
float[] cb_tackles_real = {1.81, 1.88, 1.97, 1.99, 2.08, 2.25, 2.28, 2.34, 2.34, 2.48, 2.71, 2.71, 2.74, 2.79, 2.83};

//cb clearances
String[] cb_clears_players = {"Gabr", "Mascherano", "Fonte", "Otamendi", "Magnusson", "Sanchez", "Umtiti", "Torres", "Kutepov", "Gonzalez", "Kjaer", "Godin", "Hummels", "Hegazy", "Varane"};
float[] cb_clears = {2.83, 2.83, 2.88, 2.88, 3.04, 3.19, 3.22, 3.25, 3.52, 3.89, 3.93, 3.94, 4.24, 4.53, 4.64};
float[] cb_clears_real = {5.69, 5.69, 5.76, 5.76, 6.01, 6.24, 6.29, 6.34, 6.76, 7.33, 7.39, 7.41, 7.87, 8.32, 8.49};

//mf key passes
String[] mf_keypasses_players = {"Banega", "Obi Mikel", "Herrera", "Rakitic", "Isco", "Otayf", "Krychowiak", "Ndidi", "Xhaka", "Quintero", "Al-Faraj", "De Bruyne", "Modric", "Coutinho", "Kroos"};
float[] mf_keypasses = {0.9, 0.96, 0.96, 0.98, 0.98, 1.11, 1.14, 1.22, 1.42, 1.46, 1.64, 2.0, 2.43, 4.32, 5.53};
float[] mf_keypasses_real = {7.76, 7.99, 7.99, 8.07, 8.07, 8.58, 8.70, 9.01, 9.79, 9.94, 10.65, 12.05, 13.73, 21.10, 25.82};

//mf takeons
String[] mf_takeons_players = {"Loftus-Cheek", "Milinkovic", "Jae-Sung", "Rodriguez", "Matic", "Harit", "Ljajic", "Amrabat", "Herrera", "Rogic", "Kroos", "De Bruyne", "Modric", "Coutinho", "Isco"};
float[] mf_takeons = {1.36, 1.39, 1.39, 1.81, 1.81, 1.81, 1.81, 1.86, 2.12, 3.04, 3.46, 3.87, 4.28, 4.89, 6.05};
float[] mf_takeons_real = {1.64, 1.66, 1.66, 2.0, 2.0, 2.0, 2.0, 2.04, 2.25, 3.0, 3.32, 3.65, 4.0, 4.46, 5.39};

//mf progressive runs
String[] mf_progruns_players = {"Meza", "Tadic", "Xhaka", "Trezeguet", "Modric", "Al-Dawsari", "Banega", "Guardado", "De Bruyne", "Cueva", "Al-Faraj", "Modric", "Coutinho", "Kroos", "Isco"};
float[] mf_progruns = {1.3, 1.35, 1.46, 1.57, 1.67, 1.7, 1.79, 1.95, 2.23, 2.23, 2.45, 2.88, 4.75, 5.23, 6.87};
float[] mf_progruns_real = {3.38, 3.46, 3.64, 3.82, 4.0, 4.04, 4.19, 4.45, 4.91, 4.91, 5.27, 5.97, 9.04, 9.83, 12.52};

//wing crosses
String[] wg_cross_players = {"Niang", "Di Maria", "Willian", "Samedov", "Muller", "Gudmundsson", "Quaresma", "Vela", "Moses", "Salah", "Shaqiri", "Griezmann", "Hazard", "Neymar", "Mbappe"};
float[] wg_cross = {1.16, 1.24, 1.36, 1.68, 1.82, 1.82, 1.82, 1.82, 1.82, 2.18, 2.4, 2.6, 2.75, 3.38, 4.15};
float[] wg_cross_real = {0.78, 0.82, 0.88, 1.04, 1.11, 1.11, 1.11, 1.11, 1.11, 1.29, 1.4, 1.5, 1.58, 1.89, 2.28};

//winger progressive runs
String[] wg_progruns_players = {"Heung-Min", "Werner", "Shaqiri", "Moses", "Mane", "Silva", "Carrillo", "Costa", "Messi", "Lozano", "Salah", "Griezmann", "Neymar", "Mbappe", "Hazard"};
float[] wg_progruns = {1.57, 1.79, 1.79, 1.79, 1.79, 1.95, 2.01, 2.05, 2.12, 2.45, 2.61, 2.71, 3.1, 3.19, 5.3};
float[] wg_progruns_real = {3.81, 4.17, 4.17, 4.17, 4.17, 4.43, 4.53, 4.59, 4.71, 5.24, 5.50, 5.67, 6.30, 6.45, 9.90};

//winger goals
String[] wg_goals_players = {"Guerrero", "Reus", "Boutaib", "Ansaraifard", "Ben Youssef", "Carrillo", "Mitrovic", "Niang", "Finnbogason", "Neymar", "Perisic", "Hazard", "Griezmann", "Heung-Min", "Mbappe"};
float[] wg_goals = {1.88, 1.88, 1.88, 1.88, 1.88, 1.88, 1.88, 1.88, 1.88, 2.33, 2.4, 2.53, 3.51, 3.51, 4.17};
float[] wg_goals_real = {0.44, 0.44, 0.44, 0.44, 0.44, 0.44, 0.44, 0.44, 0.44, 0.50, 0.51, 0.53, 0.66, 0.66, 0.74};

//striker goals
String[] st_goals_players = {"Suarez", "Mandzukic", "Hazard", "Inui", "Aguero", "Dzyuba", "Lukaku", "Cavani", "Salah", "Musa", "Khazri", "Costa", "Cheryshev", "Kane", "Ronaldo"};
float[] st_goals = {2.33, 2.4, 2.53, 3.02, 3.02, 3.45, 3.51, 3.71, 4.17, 4.17, 4.17, 4.34, 4.74, 5.21, 6.46};
float[] st_goals_real = {0.5, 0.51, 0.53, 0.59, 0.59, 0.65, 0.66, 0.68, 0.74, 0.74, 0.74, 0.76, 0.82, 0.88, 1.04};

//striker box touches
String[] st_boxtouch_players = {"Khazri", "Hernandez", "Lozano", "Dzyuba", "Costa", "Ronaldo", "Gomez", "Giroud", "Guerrero", "Niang", "Berg", "Jesus", "Werner", "Muller", "Mitrovic"};
float[] st_boxtouch = {2.15, 2.18, 2.18, 2.27, 2.36, 2.44, 2.44, 2.55, 2.59, 2.59, 3.88, 4.32, 4.35, 4.35, 5.97};
float[] st_boxtouch_real = {6.66, 6.73, 6.73, 6.93, 7.13, 7.31, 7.31, 7.56, 7.65, 7.65, 10.57, 11.56, 11.63, 11.63, 15.29};

//forwards race (in strikers screen)
String[] st_race_players = {"Willian", "Neymar", "Rashford", "Mbappe", "Cuadrado", "Hee-Chan", "Lozano", "Hazard", "Ronaldo", "Rebic"};
float[] st_race = {33.1, 33.1, 33.1, 33.4, 33.2, 33.3, 33.3, 33.4, 34.0, 33.9};

void setup() {
  size(1300, 830);
  background(#1EA55C);
  frameRate(100);

  virtualField = true;
  goalKeeper = false;
  striker = false;

  centreback = false;
  interceptions = true;
  tackles = false;
  clearances = false;

  midfield = false;


  wingers = false;
  wingbacks = false;

  dusha = createFont("dushaFont.ttf", 40);
  def = createFont("Arial.ttf", 14);
  defBold = createFont("Arial Bold.ttf", 14);

  Ronaldo = loadImage("ronaldo.png");
  Field = loadImage("pitch.png");
  KasperS = loadImage("kaspar.png");
  RVarane = loadImage("varane.png");
  PCoutinho = loadImage("coutinho.png");
  MHummels = loadImage("hummels.png");
  Isco = loadImage("isco.png");
  TKroos = loadImage("kroos.png");
  EHazard = loadImage("hazard.png");
  Mbappe = loadImage("mbappe.png");
  Pavard = loadImage("pavard.png");
  SArias = loadImage("arias.png");

  //race WB
  graphtemplate = loadImage("racetemplate.png");
  arias = loadImage("arias_race.png");
  haddadi = loadImage("haddadi.png");
  walker = loadImage("walker.png");
  alba = loadImage("alba.png");
  mojica = loadImage("mojica.png");
  sakai = loadImage("sakai.png");
  salvio = loadImage("salvio.png");
  carvajal = loadImage("carvajal.png");
  beresinki = loadImage("beresinki.png");
  hakimi = loadImage("hakimi.png");

  //raceST
  grapht = loadImage("grapht.png");
  willian = loadImage("willian.png");
  neymar = loadImage("neymar.png");
  rashford = loadImage("rashford.png");
  mbappe = loadImage("mbapperace.png");
  cuadrado = loadImage("cuadrado.png");
  heechan = loadImage("heechan.png");
  lozano = loadImage("lozano.png");
  hazard = loadImage("hazardrace.png");
  ronaldo = loadImage("ronaldorace.png");
  rebic = loadImage("rebic.png");
}

void draw() {
  imageMode(CENTER);
  rectMode(CENTER);
  noFill();

  if (virtualField == true) {
    virtualField();
    compare = false;
  }

  if (info == true) {
    drawInfo();
  }

  if (goalKeeper == true) {
    drawGK();
    if (compare == false) {
      if (saverate == true) {
        drawGraph(gk_saverate_players, gk_saverate, gk_saverate_real, color(#FF7112), color(#FFD698));
      }
      if (saves == true) {
        drawGraph(gk_saves_players, gk_saves, gk_saves_real, color(#FF7112), color(#FFD698));
      }
      if (cleansheets == true) {
        drawGraph(gk_cleansheets_players, gk_cleansheets, gk_cleansheets_real, color(#FF7112), color(#FFD698));
      }
    } else {
      if (saverate == true) {
        drawCGraph(gk_saverate_players, gk_saverate, color(#FF7112));
      }
      if (saves == true) {
        drawCGraph(gk_saves_players, gk_saves, color(#FF7112));
      }
      if (cleansheets == true) {
        drawCGraph(gk_cleansheets_players, gk_cleansheets, color(#FF7112));
      }
      if (Csaverate == true) {
        drawCGraphTWO(gk_saverate_players, gk_saverate, color(#FF7112));
      }
      if (Csaves == true) {
        drawCGraphTWO(gk_saves_players, gk_saves, color(#FF7112));
      }
      if (Ccleansheets == true) {
        drawCGraphTWO(gk_cleansheets_players, gk_cleansheets, color(#FF7112));
      }
    }
  }

  if (centreback == true) {
    drawCB();
    if (compare == false) {
      if (interceptions == true) {
        drawGraph(cb_intercept_players, cb_intercept, cb_intercept_real, color(#0C59AA), color(#8BD3FF));
      }

      if (tackles == true) {
        drawGraph(cb_tackles_players, cb_tackles, cb_tackles_real, color(#0C59AA), color(#8BD3FF));
      }

      if (clearances == true) {
        drawGraph(cb_clears_players, cb_clears, cb_clears_real, color(#0C59AA), color(#8BD3FF));
      }
    } else {
      if (interceptions == true) {
        drawCGraph(cb_intercept_players, cb_intercept, color(#0C59AA));
      }

      if (tackles == true) {
        drawCGraph(cb_tackles_players, cb_tackles, color(#0C59AA));
      }

      if (clearances == true) {
        drawCGraph(cb_clears_players, cb_clears, color(#0C59AA));
      }

      if (Cinterceptions == true) {
        drawCGraphTWO(cb_intercept_players, cb_intercept, color(#0C59AA));
      }

      if (Ctackles == true) {
        drawCGraphTWO(cb_tackles_players, cb_tackles, color(#0C59AA));
      }

      if (Cclearances == true) {
        drawCGraphTWO(cb_clears_players, cb_clears, color(#0C59AA));
      }
    }
  }

  if (midfield == true) {
    drawMF();
    if (compare == false) {
      if (keypasses == true) {
        drawGraph(mf_keypasses_players, mf_keypasses, mf_keypasses_real, color(#06B93A), color(#AFFF9D));
      }

      if (takeons == true) {
        drawGraph(mf_takeons_players, mf_takeons, mf_takeons_real, color(#06B93A), color(#AFFF9D));
      }

      if (progruns == true) {
        drawGraph(mf_progruns_players, mf_progruns, mf_progruns_real, color(#06B93A), color(#AFFF9D));
      }
    } else {
      if (keypasses == true) {
        drawCGraph(mf_keypasses_players, mf_keypasses, color(#06B93A));
      }

      if (takeons == true) {
        drawCGraph(mf_takeons_players, mf_takeons, color(#06B93A));
      }

      if (progruns == true) {
        drawCGraph(mf_progruns_players, mf_progruns, color(#06B93A));
      }

      if (Ckeypasses == true) {
        drawCGraphTWO(mf_keypasses_players, mf_keypasses, color(#06B93A));
      }

      if (Ctakeons == true) {
        drawCGraphTWO(mf_takeons_players, mf_takeons, color(#06B93A));
      }

      if (Cprogruns == true) {
        drawCGraphTWO(mf_progruns_players, mf_progruns, color(#06B93A));
      }
    }
  }

  if (wingers == true) {
    drawWG();
    if (compare == false) {
      if (cross == true) {
        drawGraph(wg_cross_players, wg_cross, wg_cross_real, color(#EA21E1), color(#FFC1F8));
      }

      if (goalsWG == true) {
        drawGraph(wg_goals_players, wg_goals, wg_goals_real, color(#EA21E1), color(#FFC1F8));
      }

      if (progrunsWG == true) {
        drawGraph(wg_progruns_players, wg_progruns, wg_progruns_real, color(#EA21E1), color(#FFC1F8));
      }
    } else {
      if (cross == true) {
        drawCGraph(wg_cross_players, wg_cross, color(#EE08FF));
      }

      if (goalsWG == true) {
        drawCGraph(wg_goals_players, wg_goals, color(#EE08FF));
      }

      if (progrunsWG == true) {
        drawCGraph(wg_progruns_players, wg_progruns, color(#EE08FF));
      }

      if (Ccross == true) {
        drawCGraphTWO(wg_cross_players, wg_cross, color(#EE08FF));
      }

      if (CgoalsWG == true) {
        drawCGraphTWO(wg_goals_players, wg_goals, color(#EE08FF));
      }

      if (CprogrunsWG == true) {
        drawCGraphTWO(wg_progruns_players, wg_progruns, color(#EE08FF));
      }
    }
  }

  if (wingbacks == true) {
    drawWB();

    if (compare == false) {
      if (blocks == true) {
        xPosWB = 0;
        drawGraph(wb_blocks_players, wb_blocks, wb_blocks_real, color(#05B27F), color(#48F7C1));
      }
      if (tacklesWB == true) {
        xPosWB = 0;
        drawGraph(wb_tackles_players, wb_tackles, wb_tackles_real, color(#05B27F), color(#48F7C1));
      }
      if (raceWB == true) {
        if (xPosWB <=120) {
          xPosWB++;
          raceWB(wb_race_players, wb_race, color(#05B27F));
        }
        raceWB(wb_race_players, wb_race, color(#05B27F));
      }
    } else {
      if (blocks == true) {
        xPosWB = 0;
        drawCGraph(wb_blocks_players, wb_blocks, color(#05B27F));
      }
      if (tacklesWB == true) {
        xPosWB = 0;
        drawCGraph(wb_tackles_players, wb_tackles, color(#05B27F));
      }
      if (raceWB == true) {
        xPosWB = 0;
        CraceWB(wb_race_players, wb_race, color(#05B27F));
      }

      if (Cblocks == true) {
        xPosWB = 0;
        drawCGraphTWO(wb_blocks_players, wb_blocks, color(#05B27F));
      }
      if (CtacklesWB == true) {
        xPosWB = 0;
        drawCGraphTWO(wb_tackles_players, wb_tackles, color(#05B27F));
      }
      if (CraceWB == true) {
        xPosWB = 0;
        CraceWBTWO(wb_race_players, wb_race, color(#05B27F));
      }
    }
  }

  if (striker == true) {
    drawST();

    if (compare == false) {
      if (goalsST == true) {
        drawGraph(st_goals_players, st_goals, st_goals_real, color(#F00064), color(#FFC1C3));
        xPosST = 0;
      }
      if (boxtouch == true) {
        drawGraph(st_boxtouch_players, st_boxtouch, st_boxtouch_real, color(#F00064), color(#FFC1C3));
        xPosST = 0;
      }
      if (raceST == true) {
        if (xPosST <= 120) {
          xPosST++;
          raceST(st_race_players, st_race, color(#F00064));
        }
        raceST(st_race_players, st_race, color(#F00064));
      }
    } else {
      if (goalsST == true) {
        drawCGraph(st_goals_players, st_goals, color(#F00064));
        xPosST = 0;
      }
      if (boxtouch == true) {
        drawCGraph(st_boxtouch_players, st_boxtouch, color(#F00064));
        xPosST = 0;
      }
      if (raceST == true) {
        xPosST = 0;
        CraceST(st_race_players, st_race, color(#F00064));
      }

      if (CgoalsST == true) {
        drawCGraphTWO(st_goals_players, st_goals, color(#F00064));
        xPosST = 0;
      }
      if (Cboxtouch == true) {
        drawCGraphTWO(st_boxtouch_players, st_boxtouch, color(#F00064));
        xPosST = 0;
      }
      if (CraceST == true) {
        xPosST = 0;
        CraceSTTWO(st_race_players, st_race, color(#F00064));
      }
    }
  }
}
