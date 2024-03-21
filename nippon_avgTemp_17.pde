//1980年から2022年の気温の上昇量を表すグラフ //<>//

import controlP5.*;

ControlP5 cp5;
int numPrefectures = 47;
int numChiho = 9;

int sumPoint = 0;
int rectScale = 120;
int rectX = 145;
int rectY = 50;
int rectWidth = 8 * rectScale;
int rectHeight = 5 * rectScale;
int graphOffset = 40;     //rectとグラフのマージン
PFont font;


String[] chihoName = {"hokkaido", "tohoku", "kanto", "chubu", "kinki", "chugoku", "shikoku", "kyushu", "okinawa"};
String[] chihoName2 = {"hokkaido2", "tohoku2", "kanto2", "chubu2", "kinki2", "chugoku2", "shikoku2", "kyushu2", "okinawa2"};
String[] chihoName3 = {"hokkaido3", "tohoku3", "kanto3", "chubu3", "kinki3", "chugoku3", "shikoku3", "kyushu3", "okinawa3"};

boolean hokkaido = false;
boolean tohoku = false;
boolean kanto = false;
boolean chubu = false;
boolean kinki = false;
boolean chugoku = false;
boolean shikoku = false;
boolean kyushu = false;
boolean okinawa = false;

boolean zenkoku = false;


boolean hokkaido2 = false;
boolean tohoku2 = false;
boolean kanto2 = false;
boolean chubu2 = false;
boolean kinki2 = false;
boolean chugoku2 = false;
boolean shikoku2 = false;
boolean kyushu2 = false;
boolean okinawa2 = false;

boolean hokkaido3 = false;
boolean tohoku3 = false;
boolean kanto3 = false;
boolean chubu3 = false;
boolean kinki3 = false;
boolean chugoku3 = false;
boolean shikoku3 = false;
boolean kyushu3 = false;
boolean okinawa3 = false;


color hkka = color(250, 20, 30);
color kyu = color(230, 140, 100);
color kan = color(160, 80, 255);
color oki = color(45, 0, 255);
color kin = color(130, 196, 255);
color chug = color(0, 230, 199);
color shi = color(11, 250, 0);
color toh = color(220, 255, 0);
color chub = color(205, 120, 10);


Graph[] graph = new Graph[numPrefectures + 1 + numChiho];

void setup() {
  fullScreen(P2D);
  pixelDensity(displayDensity());    //描画を滑らかに
  setCP5();
  yomikomi();

  blendMode(ADD);

  font = createFont("Avenir-Medium", 30);
  textFont(font);
  textAlign(CENTER);
}


void draw() {
  background(0);
  noStroke();
  graph[0].drawLine();
  drawGraph();
  drawSample();
}
