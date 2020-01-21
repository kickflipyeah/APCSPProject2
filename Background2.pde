PImage [] backGround = new PImage[4];
PImage backg;
String s = "W, A, S for movement";
boolean gameLive;
int count;

void animBG(){
  count++;//controls the speed of background
  if(gameLive){
    if(count%80<20){
       image(backGround[0], 0,0, width, height);
    }
    else if(count%80<40){
       image(backGround[1], 0,0, width, height);    
    }
   else if(count%80<60){
       image(backGround[2], 0,0, width, height);    
    }
   else{
    image(backGround[3], 0,0, width, height);
   }
  //for (int i = 0; i < backGround.length; i++){
  
  //}
  }
}

void setup(){
  size(800, 600);
  gameLive = true;
  backGround[0] = loadImage("./imgs/BG0.jpg");
  backGround[1] = loadImage("./imgs/BG1.png");
  backGround[2] = loadImage("./imgs/BG2.png");
  backGround[3] = loadImage("./imgs/BG3.png");
}

void draw(){
  
    
    showWAS();
    animBG();
   // if(gameLive){
   // image(backGround[i],0,0, width, height);
   // }
}

void showWAS(){
  
  
  textSize(20);
  text(s, 0, 120);

  
}
