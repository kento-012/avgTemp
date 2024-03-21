class Graph {

  Table stats;
  float[] avgMonthTemperature;
  float[] avgYearTemperature;
  float[] relativeTemperature;
  float[] allRelativeTemperature;
  int rowCount;
  int columnCount;
  int observationPoint;
  int yearCount;
  float sum;
  int graphScale = 70;
  int textOffset = 25;
  color graphCol;
  int numYokojiku = 9;
  int[] yearName = new int[43];
  int[] temperatureName = new int[numYokojiku];

  float[] avgPrefectureTemperature;

  float sumPrefecture;

  float sumChiho;
  float[] avgChihoTemperature;








  Graph(String _name, color c) {
    stats = loadTable(_name);   //データを読み込む
    graphCol = c;
  }




  void getTemperature() {
    getCsvInfo();
    calculateTemperature();
  }




  void getCsvInfo() {
    rowCount = stats.getRowCount() - 5;          //行数を取得（上の5行は除く）
    yearCount = rowCount / 12;                   //月数から年数を算出
    columnCount = stats.getColumnCount();        //列数を取得
    observationPoint = (columnCount - 1) / 3;    //列数から観測地点の数を算出

    sumPoint += observationPoint;
    //println(sumPoint);
    //sumPoint = 0;
  }





  //一県ずつ計算
  void calculateTemperature() {

    allRelativeTemperature = new float[yearCount * observationPoint];          //全てのrelativeTemperatureを入れる配列

    avgPrefectureTemperature = new float[yearCount];



    for (int k = 0; k < observationPoint; k++) {                                //観測地点回繰り返す
      sum = 0;                                        //合計を初期化
      avgMonthTemperature = new float[rowCount];      //月平均気温の配列の準備
      avgYearTemperature = new float[yearCount];      //年平均気温の配列の準備
      relativeTemperature = new float[yearCount];     //相対的な温度を入れる配列

      //月平均気温を取得
      for (int i = 0; i < rowCount; i++) {
        avgMonthTemperature[i] = stats.getFloat(i + 5, 1 + k*3);                //一県の月平均を出している
      }

      //年平均気温を月平均気温から計算
      for (int j = 0; j < yearCount; j++) {

        for (int i = 0; i < 12; i++) {
          sum += avgMonthTemperature[i + 12 * j];
        }

        avgYearTemperature[j] = sum / 12;                                             //合計から平均を算出し、配列へ入れる
        relativeTemperature[j] = avgYearTemperature[0] - avgYearTemperature[j];        //相対的な気温の計算し、配列に入れる

        allRelativeTemperature[j + yearCount * k] = relativeTemperature[j];            //relativeTemperatureの情報をallRelativeTemperatureにコピー
        //println(allRelativeTemperature[j + yearCount * k]);
        //println(allRelativeTemperature.length);


        sum = 0;
      }
    }


    //県平均（全国の場合は全国平均）
    for (int j = 0; j < yearCount; j++) {

      sumPrefecture = 0;

      for (int i = 0; i < observationPoint; i++) {
        sumPrefecture += allRelativeTemperature[j + yearCount * i];
      }

      avgPrefectureTemperature[j] = sumPrefecture / observationPoint;
      //println(avgPrefectureTemperature[j]);
    }
  }






  //グラフの軸
  void drawLine() {
    strokeWeight(0.5);
    stroke(100);
    
    int test = 3;
    int test2 = 15;

    for (int i = 0; i < test2; i++) {
      yearName[i] = 1980 + test*i;
      println(yearName[i]);
    }
    for (int i = 0; i < numYokojiku; i++) {
      temperatureName[i] = (numYokojiku-1)/2 - i;
      //println(temperatureName[i]);
    }

    pushMatrix();
    translate(rectX, rectHeight/2 + rectY);

    //縦の年数の軸
    for (int i = 0; i < test2; i++) {
      float x = map(i, 0, yearCount-1, 0, rectWidth);
      //line(test*x, -(numYokojiku-1)/2*graphScale, test*x, (numYokojiku-1)/2*graphScale);

      textSize(10);
      fill(160);
      textAlign(CENTER); //文字を中心揃えに
      //text(yearName[i], test*x, (numYokojiku-1)/2*graphScale + textOffset);
      text(yearName[i], test*x, (numYokojiku-1)/2*graphScale + 30);
    }

    //横の気温の軸
    for (int i = 0; i < numYokojiku; i++) {
      float y = map(i, 0, numYokojiku-1, -(numYokojiku-1)/2*graphScale, (numYokojiku-1)/2*graphScale);
      line(0, y, rectWidth, y);

      textSize(13);
      fill(160);
      textAlign(CENTER); //文字を中心揃えに
      text(nfp(temperatureName[i], 1), 0 - textOffset, y+5);
    }
    //(0,0)の軸
    stroke(0);
    strokeWeight(3);
    line(0, -(numYokojiku-1)/2*graphScale, 0, (numYokojiku-1)/2*graphScale);             //縦軸
    line(0, 0, rectWidth, 0);                                                            //横軸
    strokeWeight(1);

    popMatrix();
  }






  void display() {
    //blendMode(ADD);
    strokeWeight(1);
    noFill();
    stroke(graphCol, 80);
    pushMatrix();
    translate(rectX, rectHeight/2 + rectY);
    //グラフを描画

    for (int j = 0; j < observationPoint; j++) {

      beginShape();

      for (int i = 0; i < yearCount; i++) {
        float x = map(i, 0, yearCount-1, 0, rectWidth);
        float y = allRelativeTemperature[i + yearCount*j] * graphScale;
        vertex(x, y);
      }
      endShape();
    }
    popMatrix();
  }




  void prefectureDisplay() {
    //blendMode(ADD);
    strokeWeight(1);
    noFill();
    stroke(graphCol, 100);
    pushMatrix();
    translate(rectX, rectHeight/2 + rectY);

    //グラフを描画
    beginShape();

    for (int i = 0; i < yearCount; i++) {
      float x = map(i, 0, yearCount-1, 0, rectWidth);
      float y = avgPrefectureTemperature[i] * graphScale;
      vertex(x, y);
    }
    endShape();
    popMatrix();
  }



  void chihoDisplay() {
    //blendMode(ADD);
    strokeWeight(1.5);
    noFill();
    stroke(graphCol, 150);
    pushMatrix();
    translate(rectX, rectHeight/2 + rectY);

    //グラフを描画
    beginShape();

    for (int i = 0; i < yearCount; i++) {
      float x = map(i, 0, yearCount-1, 0, rectWidth);
      float y = avgPrefectureTemperature[i] * graphScale;
      vertex(x, y);
    }
    endShape();
    popMatrix();
  }




  void zenkokuDisplay() {
    //blendMode(ADD);
    strokeWeight(2);
    noFill();
    stroke(graphCol);
    pushMatrix();
    translate(rectX, rectHeight/2 + rectY);

    //グラフを描画
    beginShape();

    for (int i = 0; i < yearCount; i++) {
      float x = map(i, 0, yearCount-1, 0, rectWidth);
      float y = avgPrefectureTemperature[i] * graphScale;
      vertex(x, y);
    }
    endShape();
    popMatrix();
  }
}
