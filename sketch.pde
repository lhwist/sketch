// Author: Huan Wei Li

int Colores = color(0, 0, 0);
int pen = 1; 
int option = 0; 

void setup() {
  size(600, 600);
  background(255);
   
}
  
void draw() {
   
  stroke(0);
  strokeWeight(1);
  
  fill(240,230,140);      // khaki
  rect (20,15,20,20);
  
  fill(255,140,0);       // orange
  rect (60,15,20,20);
  
  fill(0,255,255);      // aqua
  rect (100,15,20,20);
  
  fill(139,69,19);      //saddle brown
  rect (140,15,20,20);
  
  fill(255,20,147);     // pink
  rect (180,15,20,20);
  
  fill(148,0,211);      // dark violet
  rect (220,15,20,20);
  
  fill(255,0,255);   // Magenta
  rect (260,15,20,20);
  
  fill(255);      // white 
  rect (300,15,20,20);
   
  fill(255,0,0);     //red
  rect(340, 15, 20, 20);
   
  fill(0,255,0);     //green
  rect(380, 15, 20, 20);
   
  fill(0, 0, 255);   //blue
  rect (420,15,20,20);
   
  fill(255,255,0);    //yellow
  rect(460, 15, 20, 20);
   
  fill(0);  //black 
  rect(500, 15, 20, 20);
 
 
  // tools   
  fill(255); 
  rect (550, 60,20,20);
  rect (550, 100,20,20);
  rect (550, 140,20,20);
  rect (550, 180,20,20);
  rect (550, 220,20,20);


  line(550, 70, 570, 70);
  line(550, 140, 570, 160);
  line(570, 140, 550, 160);
  strokeWeight(2);
  fill(0);
  line(550, 110, 570, 110);
  ellipse(560, 190, 3, 5);
  ellipse(560, 230, 8, 10);
 
  // mouse  
  if(mousePressed == true) {
    // color boxes
    // 20,15    khaki
    if(mouseX > 20 && mouseX < 40 && mouseY > 15 && mouseY < 35){
      Colores = color(240,230,140);  
    }
     //60,15      orange
    if(mouseX > 60 && mouseX < 80 && mouseY > 15 && mouseY < 35) {
      Colores = color(255,140,0);       
    }
    // 100,15,      aqua
    if(mouseX > 100 && mouseX < 120 && mouseY > 15 && mouseY < 35){ 
      Colores = color(0,255,255);      
    }
     // 140,15     saddle brown
    if(mouseX > 140 && mouseX < 160 && mouseY > 15 && mouseY < 35) {
      Colores = color(139,69,19);      
    }   
    // 180,15      pink
    if(mouseX > 180 && mouseX < 200 && mouseY > 15 && mouseY < 35) {
      Colores = color(255,20,147);    
    }
    // 220,15    // dark violet
    if(mouseX > 220 && mouseX < 2400 && mouseY > 15 && mouseY < 35) {
      Colores = color(148,0,211);       
    }
    // 260,15   // Magenta
    if(mouseX > 260 && mouseX < 280 && mouseY > 15 && mouseY < 35) {
      Colores = color(255,0,255);  
    }
    // 300,15 white
    if(mouseX > 300 && mouseX < 320 && mouseY > 15 && mouseY < 35) {
      Colores = color(255);
    }
    // 340, 15 red 
    if(mouseX > 340 && mouseX < 360 && mouseY > 15 && mouseY < 35){
      Colores = color(255,0,0);
    }
    //380, 15  green 
    if(mouseX > 380 && mouseX < 400 && mouseY > 15 && mouseY < 35){
      Colores = color(0,255,0);
    }
    // 420,15   blue
    if(mouseX > 420 && mouseX < 440 && mouseY > 15 && mouseY < 35){
      Colores = color(0, 0, 255);
    }
    // 460, 15  yellow 
    if(mouseX > 460 && mouseX < 480 && mouseY > 15 && mouseY < 35){
      Colores = color(255,255,0);
    }
    // 500, 15   black 
    if(mouseX > 500 && mouseX < 520 && mouseY > 15 && mouseY < 35){
         Colores = color(0);
    }
    
    // tool boxes 
    // 550, 60   light stroke weight
    if(mouseX > 550 && mouseX < 570 && mouseY > 60 && mouseY < 80){
      pen = 1; // strokeWeight(2);
      option = 0; 
    }
    // 550, 100 heavy stoke weight
    if(mouseX > 550 && mouseX < 570 && mouseY > 100 && mouseY < 120){
      pen = 4;   // strokeWeight(10);
      option = 0; 
    }
    // 550, 140  clear 
    if(mouseX > 550 && mouseX < 570 && mouseY > 140 && mouseY < 160){
      background(255);
    }
    // 560, 190    small ellipse
    if(mouseX > 550 && mouseX < 570 && mouseY > 180 && mouseY < 200){
      option = 1; 
    }
    // 550, 220   large ellipse 
    if(mouseX > 550 && mouseX < 570 && mouseY > 220 && mouseY < 240){
      option = 2; 
    }

   
    // draw out the stuff     
    stroke(Colores);
    fill(Colores);
    strokeWeight(pen);    
   
    switch(option) {
      case 0: 
        if(mouseY > 35 && mouseX < 547) {           //  draw in a parameter
          line (mouseX,mouseY,pmouseX,pmouseY);
        }
        break;
      case 1:     // small ellipses
        if(mouseY > 35 && mouseX < 547) 
          ellipse(mouseX,mouseY, random(5), random(5));
        break; 
      case 2:   // larger ellipse
        if(mouseY > 35 && mouseX < 547) 
          ellipse(mouseX,mouseY, random(15) + 1, random(15) + 1);
        break;
      default:             
        if(mouseY > 35 && mouseX < 547) {           //  draw in a parameter
          line (mouseX,mouseY,pmouseX,pmouseY);
        }
     }  // switch
    
  }// if mouse pressed

} // draw

void keyPressed()
{
  if (key == 's')
  {
    println("Saving...");
    saveFrame("image.png");   // save image
    println("Done!"); 
  } // if
}  // keyPressed
