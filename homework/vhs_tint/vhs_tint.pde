PImage jess1;
PImage jess2; 
PImage jess3;
PImage jess4; 

void setup(){
   size(900, 600); 
   jess1 = loadImage("Images/jess_width800.jpg"); 
   jess2 = loadImage("Images/jessblue.png");
   jess3 = loadImage("Images/jessgreen.png");
   jess4 = loadImage("Images/redjess.png");
}

void draw(){
  //tint(0,153,204,120);//120
  tint(0,153,204,90);
  image(jess1,7,0);
  
  tint(246,72,72,80); //playing around with the opacity, digit on the end 
  image(jess1,15,0); 

  tint(50,230,50,30);
  image(jess1,14,0);
   
  
  //tint(); 
  //image(jess2,8,0);
  //tint(255,96); //play around with different opacity values 
  //image(jess3,12,0);//started messing with position of pictures to improve vhs like turorials show for premier
  //tint(255,112);   //starte using tint on the three different pictures I used to simulate the vhs effect
  //image(jess4,5,0);
  //tint(255,115); 
  loadPixels();

  updatePixels(); 
  //jess1.save("copied.jpg"); 

  
}
