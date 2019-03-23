//PImage[] mds = new PImage[3];
PImage moma,tandon,dark; 



void setup() {
  size(1536,2048);
  //mds[0] = loadImage("Images/momapainting.jpg"); 
  //mds[1] = loadImage("Images/darklights.jpg");
  //mds[2] = loadImage("Images/tandonshapes.jpg");
  //moma = loadImage("Images/momapainting.jpg");
  //tandon = loadImage("Images/tandonshapes.jpg");
  tandon = loadImage("Images/food.jpg");
}

void draw() {
   
  //background(0); 
  //tint(255,mouseX,mouseY); 
  //image(moma, 0 ,0, mouseX, mouseY);
  //image(moma,0,0,1536,2048);
  loadPixels();
  //moma.loadPixels(); //kept getting a nullpointer error when I used this over
  tandon.loadPixels(); 
  //loadPixels
 
  //alerting processing that we are going to the moma's pixels 
  for(int x = 0; x < width; x++){
    for(int y = 0; y<height; y++){ 
      int loc = x + y*width;
      float b = brightness(tandon.pixels[loc]);
      if(b>180){
      pixels[loc] = color(0,0,255);
      }
      else{
      pixels[loc] = color(0,0,100);

      }
      
      //float r = red(tandon.pixels[loc]);
      //float g = green(tandon.pixels[loc]);
      //float b = blue(tandon.pixels[loc]);
      //pixels[loc] = moma.pixels[loc]/2;
      //go to the moma image, give me the pixel
      //from this location, take that pixel and put it into the screen at the same
      //location. For every single pixel go and get the pixel from the moma and put
      //it on the screen
      //pixels[loc] = color(r,g,b); //classic version
      //pixels[loc] = color(g,b*2,r); // switch values around
      //if(x > 200){
      // pixels[loc] = color(r,g,b*2);  
      //}
      //else{
      //  pixels[loc] = color(r,g,b); 
      //}
      //float d = dist(width/2,height/2,x,y); //gives the distance between the center of the 
      //window
      //float factor = map(d,0,200,0,2); //factor consist of a distance between 0 and 200
      //float factor = map(d,0,200,10,0);
      //float d=dist(moustX,mouseY,x,y); 
      //float factor = map(d,0,200,0,10);
      //and we map that range between 0 and 2
      //pixels[loc]=color(r*factor,g*factor,b*factor); 
       
    }
  }
  //moma.updatePixels(); //need to call this because updatePixels() gives me a wierd 
  //image
  updatePixels(); 
}
