//一県ずつ表示、地方数で場合分け

//CP5がfalseの時にしかマウスオーバーをした時に色が変わらないので、グラフをfalseで表示、trueで非表示にしている

void drawGraph() {
  //観測地点の数を表示
  if (hokkaido==false) {
    for (int i = 0; i < 1; i++) {
      graph[i].display();
    }
  }
  if (tohoku==false) {
    for (int i = 0; i < 6; i++) {
      graph[i+1].display();
    }
  }
  if (kanto==false) {
    for (int i = 0; i < 7; i++) {
      graph[i+7].display();
    }
  }
  if (chubu==false) {
    for (int i = 0; i < 9; i++) {
      graph[i+14].display();
    }
  }
  if (kinki==false) {
    for (int i = 0; i < 7; i++) {
      graph[i+23].display();
    }
  }
  if (chugoku==false) {
    for (int i = 0; i < 5; i++) {
      graph[i+30].display();
    }
  }
  if (shikoku==false) {
    for (int i = 0; i < 4; i++) {
      graph[i+35].display();
    }
  }
  if (kyushu==false) {
    for (int i = 0; i < 7; i++) {
      graph[i+39].display();
    }
  }
  if (okinawa==false) {
    for (int i = 0; i < 1; i++) {
      graph[i+46].display();
    }
  }


  if (zenkoku==false) {
    graph[56].zenkokuDisplay();
  }
}
