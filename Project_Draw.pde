void setup() {
  size(1000,800);
  background(10,121,105);
}
 void draw() {
   //erases the whole screen 
   if((keyPressed==true)&&(key=='q')) {
      background(10,121,105);
    }
    
    //erases a section that follows the mouse
    if((keyPressed==true)&&(key=='f')) {
      stroke(10,121,105);
      strokeWeight(8);
      line(mouseX,mouseY,pmouseX,pmouseY);
    }
   
   //draws a blue line
    if((keyPressed==true)&&(key=='a')) {
      stroke(4,26,142);
      strokeWeight(5);
      line(mouseX,mouseY,pmouseX,pmouseY);
    }
   
   //draws a large black line that follows the mouse
   if((keyPressed==true)&&(key=='i')) {
     stroke(0);
     strokeWeight(10);
     line(mouseX,mouseY,pmouseX,pmouseY);
   }
   
   //erases a large section that follows the mouse
   if((keyPressed==true)&&(key=='j')) {
     stroke(10,121,105);
     strokeWeight(13);
     line(mouseX,mouseY,pmouseX,pmouseY);
   }
 }

 //draws a line when you click the mouse
void mouseDragged() {
  stroke(0);
  strokeWeight(5);
  line(pmouseX,pmouseY,mouseX,mouseY);
}