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
  image(jess1,0,0);
  image(jess2,8,0);
  tint(255,96); //play around with different opacity values 
  image(jess3,12,0);//started messing with position of pictures to improve vhs like turorials show for premier
  tint(255,112);   //starte using tint on the three different pictures I used to simulate the vhs effect
  image(jess4,5,0);
  tint(255,115); 
  loadPixels();
  //jess1.loadPixels();
  //for(int x = 0; x < width; x++){
  //   for(int y = 0; y < height; y++){
  //    int loc = x+y*width; 
  //    //pixels[loc] = jess.pixels[loc];//we are saying to go to that jess image and give me the pixel from that
  //    //location, take that pixel and put it into the screen at the same location
  //    float r = red(jess1.pixels[loc]);
  //    float g = green(jess1.pixels[loc]);
  //    float b = blue(jess1.pixels[loc]); 
  //    pixels[loc] = color(r,g,b);
  //   }
  //}
  
  updatePixels(); 
  //jess1.save("copied.jpg"); 

  
}
