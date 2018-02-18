// AET 310 Creative Coding Fall 2017
// Larkin Williams-Capone
// Demo #8

//String arrays for loading in lines
String[] lines, line1, line2, line3, line4;
//String to use for printing to screen
String prnt;
void setup() {
  size(800,800);
  
  //load input file into array, each spot in array is a line
  lines = loadStrings("new");
  
  //Take each line and split it using commas
  line1 = split(lines[0], ','); 
  line2 = split(lines[1], ',');
  line3 = split(lines[2], ','); 
  line4 = split(lines[3], ','); 
  
  //init text string to be empty
  prnt = "";
}

void draw() {
  
  background(0);
  textSize(50);
  
  //output our text string
  text(prnt, 0, 50);
  
  if(frameCount % 15 == 0 ) {
    //Add a random word from the first line, trim it to remove whitespace
    prnt += line1[int(random(line1.length))].trim() + " ";
  }
  
  if(prnt.length() % 7 == 0) {
    //when the length of the string prnt is divisable by 7, drop down to a new line
    prnt += "\n";
  }
}