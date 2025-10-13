//week06-1_sound_library_SoundFile_play
//File-Preference 字大一點
//sketch-library-managelibraries 找sound安裝
//file-examples-libraries核心函式庫-sound-soundfile-simpleplayback
//範例有聲音
import processing.sound.*; //使用聲音外掛模組
SoundFile sound;
void setup(){
  size(500,400);
  sound = new SoundFile(this, "music.mp3");
  sound.play();
}
void draw(){
  
};
