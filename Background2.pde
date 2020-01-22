PImage [] backGround = new PImage[4];
PImage backg;
String s = "W, A, S for movement";
boolean gameLive;
int count;
boolean jump = false;

float i = 0;
float move = 5;
float startX = 400;
float startY = 300;
float updatedX = startX;
float updatedY = startY;
float g;

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
    image(backGround[0], 0,0, width, height);
   }
  //for (int i = 0; i < backGround.length; i++){
  
  //}
  }
}

void setup(){
  size(800, 600);
  gameLive = true;
  backGround[0] = loadImage("./imgs/BG0.jpg");
  backGround[1] = loadImage("./imgs/BG2.png");
  backGround[2] = loadImage("./imgs/BG3.png");
  fill(188,249,255);
  circle(startX, startY, 25);
  g = -15;
}

void draw(){
  
    
    showWAS();
    animBG();
    checkKeys();
   // if(gameLive){
   // image(backGround[i],0,0, width, height);
   // }
}

void showWAS(){
  
  
  textSize(20);
  text(s, 0, 120);

  
}

void checkKeys(){
  if (updatedY >= startY){
    if (jump == true){
    }
        jump = false;
      }
  if (keyPressed){
    if (key == 'w' && jump == false){
      //updatedY -= move;
      jump = true;
    }
    if (key == 'a'){
      updatedX -= move;
    }
    if (key == 'd'){
      updatedX += move;
    }
  }
    if (jump == true){
      if (i < move){
        println("jump");
        updatedY += g;
        g += 1;
      }
    }
    else{
      g = -15;
      if (updatedY >= startY){
        updatedY = startY;
      }
    }
    update();      
  
}

void update(){
  fill(188,249,255);
  circle(updatedX, updatedY, 25);
}
