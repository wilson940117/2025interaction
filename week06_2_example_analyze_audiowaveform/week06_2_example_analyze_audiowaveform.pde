//week06-2_example_analyze_audiowaveform
//使用了waveform的物件變數分析音樂
/**
 * This sketch shows how to use the Waveform class to analyze a stream
 * of sound. Change the number of samples to extract and draw a longer/shorter
 * part of the waveform.
 */

import processing.sound.*;

// Declare the sound source and Waveform analyzer variables
SoundFile sample;//宣告soundfile物件變數
Waveform waveform;//宣告waveform物件變數

// Define how many samples of the Waveform you want to be able to read at once
int samples = 100;//一次獨入多少 sample:100個sample

public void setup() {
  size(640, 360);
  background(255);

  // Load and play a soundfile and loop it.
  sample = new SoundFile(this, "beat.aiff");//讀入音檔
  sample.loop();//循環播放 VS.之前.play()是只撥放一次

  // Create the Waveform analyzer and connect the playing soundfile to it.
  waveform = new Waveform(this, samples);//享用100格來分析音樂
  waveform.input(sample);//用剛剛的音樂檔進行分析
}

public void draw() {
  // Set background color, noFill and stroke style
  background(0);
  stroke(255);
  strokeWeight(2);
  noFill();

  // Perform the analysis
  waveform.analyze();//進行波形的分析
  
  beginShape();
  for(int i = 0; i < samples; i++){//把這100格的座標算出來
    // Draw current data of the waveform
    // Each sample in the data array is between -1 and +1 
    vertex(
      map(i, 0, samples, 0, width),//X座標對應0...100的值 拉長到視窗長度640
      map(waveform.data[i], -1, 1, 0, height)
    );
  }
  endShape();
}
