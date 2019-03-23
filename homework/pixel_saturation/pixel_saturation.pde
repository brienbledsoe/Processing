PImage img; 
PImage sorted; 

void setup(){
 size(700,600); 
 //jess_width800 can have higher dimensions pictures as long as my selection sort is more agressive
 img = loadImage("Images/jess_width800.jpg");
 sorted = createImage(img.width, img.height, RGB); 
 sorted.loadPixels();
 //img.loadPixels(); 
 //for(int i = 0; i < sorted.pixels.length; i++){ //this is a longer way of copying all the pixels from the original
 // sorted.pixels[i] = img.pixels[i]; 
 //}
 sorted = img.get(); //function of processing that just gets a copy of an image
 //now we need a selection sort!
 for(int i = 0; i < sorted.pixels.length; i+=4){ // looking at every individual pixel, however play around with the values such as i+=8
   float record = -1; //no pixel can have a brightness of less then 0
   //float record = 0; 
   int selectedPixel = i; //by default we want to start with the first one  
  for(int j= i; j < sorted.pixels.length; j+=8){ //play around with the j+= so picture can process faster
   color pix = sorted.pixels[j]; //that is the color at that particular pixel
   float b = hue(pix); //gives the hue value of a particular color
   if(b > record){
     selectedPixel = j; //this is looking at every individual pixel from j to the end and seeing if its brightness beats whatever previous
     //brightest one that was found and storing it as a selected and storing a record
     record = b; 
   }
   
  }
  //swap selectedPixel with i
  color temp = sorted.pixels[i]; //temporary variable to save whats in i so we can overwrite whats inside  
  sorted.pixels[i] = sorted.pixels[selectedPixel];//swapping the values 
  sorted.pixels[selectedPixel] = temp;
  
 }
 
 sorted.updatePixels(); 
}


void draw(){
  background(0); 
  //image(img, 0,0);
  image(sorted, 0, 0); 
}
