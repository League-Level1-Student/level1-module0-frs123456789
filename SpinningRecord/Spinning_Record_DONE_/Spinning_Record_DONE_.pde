import ddf.minim.*;
Minim minim;
AudioPlayer song;

PImage pictureOfRecord;
void rotateImage(PImage image, int amountToRotate) {
     translate(width/2, height/2);
     rotate(amountToRotate*TWO_PI/360);
     translate(-image.width/2, -image.height/2);
}
int angle = 0;

void setup(){
  minim = new Minim(this);
size(600,600); 
pictureOfRecord= loadImage("record.jpg");
pictureOfRecord.resize(600,600);
song = minim.loadFile("Johny Johny Yes Papa.mp3", 512);


}
void draw(){
 
rotateImage(pictureOfRecord, angle);
image(pictureOfRecord, 0,0);
if(mousePressed){
   angle += 5;
}
if(mousePressed){
  song.play();
song.pause();
}









}