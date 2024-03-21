void yomikomi() {
  for (int i = 0; i < numPrefectures + numChiho; i++) {
    if (i < 1) {
      color hokkaido = hkka;                      //青
      String prefectureName = nf(i+1, 2) + ".csv";
      graph[i] = new Graph(prefectureName, hokkaido);
      graph[i].getTemperature();
    } else if ((i >= 1) && (i < 7)) {
      color tohoku = toh;                       //赤
      String prefectureName = nf(i+1, 2) + ".csv";
      graph[i] = new Graph(prefectureName, tohoku);
      graph[i].getTemperature();
    } else if ((i >= 7) && (i < 14)) {
      color kanto = kan;                        //黄緑
      String prefectureName = nf(i+1, 2) + ".csv";
      graph[i] = new Graph(prefectureName, kanto);
      graph[i].getTemperature();
    } else if ((i >= 14) && (i < 23)) {
      color chubu = chub;                         //水色
      String prefectureName = nf(i+1, 2) + ".csv";
      graph[i] = new Graph(prefectureName, chubu);
      graph[i].getTemperature();
    } else if ((i >= 23) && (i < 30)) {
      color kinki = kin;                         //黄色
      String prefectureName = nf(i+1, 2) + ".csv";
      graph[i] = new Graph(prefectureName, kinki);
      graph[i].getTemperature();
    } else if ((i >= 30) && (i < 35)) {
      color chugoku = chug;                        //ピンク
      String prefectureName = nf(i+1, 2) + ".csv";
      graph[i] = new Graph(prefectureName, chugoku);
      graph[i].getTemperature();
    } else if ((i >= 35) && (i < 39)) {
      color shikoku = shi;                        //青緑
      String prefectureName = nf(i+1, 2) + ".csv";
      graph[i] = new Graph(prefectureName, shikoku);
      graph[i].getTemperature();
    } else if ((i >= 39) && (i < 46)) {
      color kyushu = kyu;                        //オレンジ
      String prefectureName = nf(i+1, 2) + ".csv";
      graph[i] = new Graph(prefectureName, kyushu);
      graph[i].getTemperature();
    } else if (i  == 46) {
      color okinawa = oki;                       //青紫
      String prefectureName = nf(i+1, 2) + ".csv";
      graph[i] = new Graph(prefectureName, okinawa);
      graph[i].getTemperature();
    }


    //地方平均
    else if (i == 47) {
      color hokkaido = hkka;                      //青
      String prefectureName = "hokkaido.csv";
      graph[i] = new Graph(prefectureName, hokkaido);
      graph[i].getTemperature();
    } else if (i == 48) {
      color tohoku = toh;                       //赤
      String prefectureName = "tohoku.csv";
      graph[i] = new Graph(prefectureName, tohoku);
      graph[i].getTemperature();
    } else if (i == 49) {
      color kanto = kan;                        //黄緑
      String prefectureName = "kanto.csv";
      graph[i] = new Graph(prefectureName, kanto);
      graph[i].getTemperature();
    } else if (i == 50) {
      color chubu = chub;                         //水色
      String prefectureName = "chubu.csv";
      graph[i] = new Graph(prefectureName, chubu);
      graph[i].getTemperature();
    } else if (i == 51) {
      color kinki = kin;                         //黄色
      String prefectureName = "kinki.csv";
      graph[i] = new Graph(prefectureName, kinki);
      graph[i].getTemperature();
    } else if (i == 52) {
      color chugoku = chug;                        //ピンク
      String prefectureName = "chugoku.csv";
      graph[i] = new Graph(prefectureName, chugoku);
      graph[i].getTemperature();
    } else if (i == 53) {
      color shikoku = shi;                        //青緑
      String prefectureName = "shikoku.csv";
      graph[i] = new Graph(prefectureName, shikoku);
      graph[i].getTemperature();
    } else if (i == 54) {
      color kyushu = kyu;                        //オレンジ
      String prefectureName = "kyusyu.csv";
      graph[i] = new Graph(prefectureName, kyushu);
      graph[i].getTemperature();
    } else if (i == 55) {
      color okinawa = oki;                       //青紫
      String prefectureName = "okinawa.csv";
      graph[i] = new Graph(prefectureName, okinawa);
      graph[i].getTemperature();
    }
  }


  color zenkoku = (#ffffff);                      //白
  String prefectureName = "zenkoku.csv";
  graph[56] = new Graph(prefectureName, zenkoku);
  graph[56].getTemperature();
}
