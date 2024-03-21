void drawSample() {

  float rectWidth = 5;
  float rectHeight = 20;

  int sampleStep = 100;
  int x = 1165;
  int offset = rectY+20;
  int margin = 65;
  int alpha = 150;

  noStroke();
  fill(hkka, alpha);
  rect(x, offset + margin * 0, rectWidth, rectHeight);
  fill(toh, alpha);
  rect(x, offset + margin * 1, rectWidth, rectHeight);
  fill(kan, alpha);
  rect(x, offset + margin * 2, rectWidth, rectHeight);
  fill(chub, alpha);
  rect(x, offset + margin * 3, rectWidth, rectHeight);
  fill(kin, alpha);
  rect(x, offset + margin * 4, rectWidth, rectHeight);
  fill(chug, alpha);
  rect(x, offset + margin * 5, rectWidth, rectHeight);
  fill(shi, alpha);
  rect(x, offset + margin * 6, rectWidth, rectHeight);
  fill(kyu, alpha);
  rect(x, offset + margin * 7, rectWidth, rectHeight);
  fill(oki, alpha);
  rect(x, offset + margin * 8, rectWidth, rectHeight);

  textSize(15);
  fill(170);

  for (int i = 0; i < 9; i++) {
    textAlign(LEFT, TOP);
    text(chihoName[i], x + (rectWidth+8), offset + margin * i);
  }

  fill(255, alpha);
  rect(x, 760, rectWidth, rectHeight);

  fill(170);
  textAlign(LEFT, TOP);
  text("zenkoku_heikin", x + (rectWidth+8), 760);
  //text("全国平均", x + (rectWidth+8), 760);
}
