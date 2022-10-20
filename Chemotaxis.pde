//declare bacteria variables here  
Bacteria [] what;
int red = color(#D6381C);
int g = 100;
boolean where = true;
boolean words = true;
class Bacteria{     
   int myX, myY, x, y, siz, siz2, wcolor;
   Bacteria()
   {
    myX = x;
    myY = y;
    myX = myY = 250; 
    siz = ((int)(Math.random()*30)+7);
    siz2 = ((int)(Math.random()*30)+7);
    wcolor = color(((int)(Math.random()*256)-100),((int)(Math.random()*256)),((int)(Math.random()*256)));
   }
   void move()
   {
     if (mouseX > myX)
       myX = myX + (int)(Math.random()*5)-1;
     else
       myX = myX + (int)(Math.random()*5)-6;
     if (mouseY > myY)
       myY = myY + (int)(Math.random()*5)-1;
     else
       myY = myY + (int)(Math.random()*5)-6;
     //myX = myX + (int)(Math.random()*7)-3;
     //myY = myY + (int)(Math.random()*7)-3;
    }
    void show()
    {
      noStroke();
      //if (dist(mouseX, mouseY, myX, myY) < 
      fill(wcolor);
      ellipse(myX,myY, siz, siz2);
    }
     
 } //end of class
 void setup(){     
   //initialize bacteria variables here
   int myX, myY;
   size(500,500);
   background(0);
   what = new Bacteria[g];
   for (int i = 0; i < what.length; i++)
     what[i] = new Bacteria();
 }   
void draw(){   
   background(0);
   fill(0);
   rect(20,450,60,500);
   fill(#FFFFFF);
   if (words == true)
     text("maybe don't get caught", 20, 480);
   else{
     background(#C60E0E);
     text("oops", 80, 330);
   }
   if (where == true){
     for(int i = 0; i < what.length; i++){
      what[i].move();
      what[i].show();   
     }
     //if((get(mouseX, mouseY) == color(#FFFFFF)))
     //  where = true;
     //if((get(mouseX, mouseY) == color(0,0,0)))
     //  where = true;
     if(get(mouseX, mouseY) != color(0,0,0)){
       where = false;
       words = false;
    }
   }
}
void mousePressed()
  {
      redraw();
  }
