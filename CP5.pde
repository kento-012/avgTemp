void setCP5() {
  cp5 = new ControlP5(this);

  int x = 1165;
  int offset = rectY+20;
  int margin = 65;


  for (int i = 0; i < chihoName.length; i++) {

    cp5.addToggle(chihoName[i])
      .setBroadcast(false)
      .setPosition(x, offset + margin * i)
      .setSize(150, 50)

      .setColorActive(color(255, 0)) //押したときの色
      .setColorForeground(color(100, 130, 200, 120)) //マウスを乗せた時の色

      .setColorBackground(color(100, 130, 200, 40)) //通常時の色
      //.setColorCaptionLabel(color(0, 0))
      .setCaptionLabel("")
      .setBroadcast(true)
      ;
  }

  cp5.addToggle("zenkoku")
    .setBroadcast(false)
    .setPosition(x, 760)
    .setSize(150, 50)
    .setColorActive(color(255, 20)) //押したときの色
    .setColorForeground(color(100, 130, 200, 130)) //マウスを乗せた時の色

    .setColorBackground(color(100, 130, 200, 50)) //通常時の色
    .setColorCaptionLabel(color(0, 0))
    .setCaptionLabel("")
    .setBroadcast(true)
    ;
}

/*
    .setColorActive(color(255, 0, 0)) //押したときの色
 .setColorBackground(color(255, 200, 0)) //通常時の色
 .setColorForeground(color(255, 150, 0)) //マウスを乗せた時の色
 .setColorCaptionLabel(color(0)); //テキストの色
 */
