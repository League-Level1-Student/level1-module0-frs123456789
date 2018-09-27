int score=0;
void checkCatch(int x){
     if (x > mouseX && x < mouseX+40)
          score++;
     else if (score > 0) 
          score--;
     println("Your score is now: " + score); }
int dropy = 20;
int randomNumber = (int) random(width);
void setup(){
  size(500,500);

 
  
  

}
void draw(){
  background(173,173,173); 
  dropy+= 4;
  fill(63, 64, 66);
  rect(mouseX,450,40,50);
 fill(0, 0, 0);
textSize(16);
text("Score: " + score, 20, 20);
fill(181, 220, 244);
stroke(0,0,0);
  ellipse(randomNumber,dropy,10,15);
 if(dropy == 500){
   dropy=20;
   checkCatch(randomNumber);
   randomNumber = (int) random(width);
   

 }
  
} 
  