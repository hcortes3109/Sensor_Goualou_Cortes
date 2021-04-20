//Librairies
#include <stdio.h>
#include <SoftwareSerial.h>
#include <Adafruit_SSD1306.h>       
#include <splash.h>
#include <Adafruit_GFX.h>
#include <Adafruit_GrayOLED.h>
#include <Adafruit_SPITFT.h>
#include <Adafruit_SPITFT_Macros.h>
#include <gfxfont.h>
#include <Adafruit_BusIO_Register.h>
#include <Adafruit_I2CDevice.h>
#include <Adafruit_I2CRegister.h>
#include <Adafruit_SPIDevice.h>
#include <SPI.h>
#include <Wire.h>

//Ports Arduino

/*Bluetooth */
#define txPin 11           //Broche 7 en tant que TX, a raccorder sur RX du HC-05 /10
#define rxPin 10           //Broche 8 en tant que RX, a raccorder sur TX du HC-05 /11
#define baudrate 9600
SoftwareSerial mySerial(rxPin ,txPin); //Definition du software serial

/*Signal de sortie*/
#define Tension_entree A0 //entrée analogique après etre passé dans la R et l'ampli transimpédance

/*Encodeur Rotatoire*/
#define CLOCK  3 //CLK Output
#define DATA  4  //DT Output
#define Switch 2 // Switch connection

//Variables
bool Appui = HIGH;
bool attente = LOW;

volatile unsigned int encoder0Pos = 0; //0 = R, 1 = U
volatile unsigned int Menu = 0; //0 = mesure on, 1 = mesure off, menu

/* OLED (128x64 size display using I2C)(Monochrome OLEDs based on SSD1306 drivers)**

if error : Adafruit._GFX.h not found, download Adafruit-GFX Library : https://github.com/adafruit/Adafruit-GFX-Library

* Watch the video here: https://youtu.be/RjyulqVsz2o
* Other Robojax codes and videos at http://robojax.com/learn/arduino
*/

#define OLED_RESET 4
Adafruit_SSD1306 display(OLED_RESET);
#define NUMFLAKES 10
#define XPOS 0
#define YPOS 1
#define DELTAY 2
double count=0;

//PIN connection: https://www.arduino.cc/en/Reference/Wire
//SDA to A4, SCL to A5

// Width and Height of Display which is 128 xy 64 
#define LOGO16_GLCD_HEIGHT 64
#define LOGO16_GLCD_WIDTH  128 

//#if (SSD1306_LCDHEIGHT != 64)
//#error("Height incorrect, please fix Adafruit_SSD1306.h!");
//#endif

void setup(){

  //Configuration port du Bluetooth
  pinMode(rxPin,INPUT);
  pinMode(txPin,OUTPUT);
    
  mySerial.begin(baudrate);         //Open serial communication and wait for port to open
  Serial.begin(baudrate);           //Set the data rate for the SoftwareSerial port
  
  //Configuration port de l'Encodeur rot
  pinMode(CLOCK, INPUT); 
  pinMode(DATA, INPUT);
  //pinMode(Switch, INPUT);
  digitalWrite(CLOCK, HIGH);         //turn on pullup resistor
  digitalWrite(DATA, HIGH);

  //attachInterrupt(digitalPinToInterrupt(DATA), doencoder, RISING);      // Fait agir la fonction Doencoder sur la pin DATA
  
  // by default, we'll generate the high voltage from the 3.3v line
  display.begin(SSD1306_SWITCHCAPVCC, 0x3C);  // initialize with the I2C addr 0x3C (for the 128x64)

  display.clearDisplay();         //Clear the buffer
  display.setTextSize(2);
  display.setTextColor(WHITE);
  display.setCursor(5, 10);
  display.println(F("GLOU TREK"));
  display.display();
  //display.startscrollright(0x00, 0x0F);
  delay(2000);
  display.clearDisplay();

  }

  void loop(){
    
  /*lecture U - Bluetooth*/
  byte Vadc = map(analogRead(Tension_entree),0,1024,0,255); //Read analog A0 and convert V en 1 octet
  if (Vadc == 0){
   Vadc++;
    }
  Serial.print("La valeur de la tension envoyee au Bluetooth est : "); // Neat :)
  Serial.println (Vadc, DEC);
  mySerial.write(Vadc); //Send data,demande au BT de l'arduino d'envoyer au BT du smartphone
  // mySerial.print(); Send text
  delay(25);


  float tension = analogRead(Tension_entree);
  if (tension == 0){
   tension++;
    }
  tension = tension*5.0/1024.0;
  double resistance = 101.0*100000.0*(5.0/tension) - 110000.0;
  Serial.print("La valeur de la tension mesuree est : "); // Neat :)
  Serial.println (tension, DEC);
  Serial.print("La valeur de la resistance mesuree est : "); // Neat :)
  Serial.println (resistance, DEC);
    
   /*Encodeur rotatoire*/
  Serial.print("Position de l'encodeur : ");
  Serial.println (encoder0Pos, DEC);  //Angle = (360 / Encoder_Resolution) * encoder0Pos

  /*//Gestion du bouton, notre encodeur rotatoire n'étant pas opérationnel, nous avons laissé ce code en commentaire. Ce code est surement imcomplet et demanderait quelques
   * ajout afin de pouvoir créer des menus et les choisir avec l'encodeur rotatoire.
  Appui = digitalRead(Switch);
  if (Appui == HIGH && attente == LOW && Menu == 0)
  {
    Menu = 1;
    attachInterrupt(digitalPinToInterrupt(DATA), doencoder,RISING);
    delay(500);
  }
  else if (Appui == HIGH && attente == LOW && Menu == 1)
  {
      Menu=0;
      detachInterrupt(digitalPinToInterrupt(DATA));
      delay(500);
  }
  attente = Appui;
  
    //Affichage sur écran OLED
  switch(Menu)
   {
    case 0 :
      switch (encoder0Pos)
     {
      case 0 :
      Affichage_R(resistance/1000000.0);
      break;

      case 1 :
      Affichage_U(tension);
      break;
     }
     break;
    
     case 1 :
       switch (encoder0Pos)
     {
        case 0 :
        display.clearDisplay();
        display.setTextSize(1);
        display.setTextColor(WHITE);

        display.setCursor(5, 0);
        display.println(F(" --> Resistance"));
        display.setCursor(30, 17);
        display.println(F(" Tension"));
        display.display();
        break;

        case 1 :
        display.clearDisplay();
        display.setTextSize(1);
        display.setTextColor(WHITE);

        display.setCursor(30, 0);
        display.println(F(" Resistance"));
        display.setCursor(5,17);
        display.println(F(" --> Tension"));
        display.display();
        break;
      }
      break;
   }
  */
  
  //OLED ECRAN TOUT SEUL, nous  utilisons cette partie du code pour afficher sur l'écran OLED la résistance du capteur directement
  String Vstring;
  Vstring = (String) tension;
  String Res;
  resistance = resistance/1000000.0;
  Res = (String) resistance;
  display.clearDisplay();
  
  robojaxText("Voltage:          ", 4, 3, 1, false);
  robojaxText(Vstring, 65, 3, 1, false);
  robojaxText("V", 110, 3, 1, false);
  robojaxText("Resistance:       ", 4, 20, 1, false);
  robojaxText(Res, 76, 20, 1, false);
  robojaxText("MO", 110, 20, 1, false);
  
  display.drawLine(1, 16, 128, 16, WHITE); //display.drawLine(StartX, StartY, EndX, EndY, WHITE)
  display.drawRect(1, 1, 126,31, WHITE);
  display.drawCircle(64,16, 3, WHITE);
  //display.startscrollright(0x00, 0x0F);
  display.display();
  delay(2000);
}

void doencoder()
{
  if (encoder0Pos == 0)
  {
    encoder0Pos = 1;
  }
  else 
  {
   encoder0Pos = 0;
  }
}

/*void doencoder(){
   if(digitalRead(CLOCK) != digitalRead(DATA)){
    if (digitalRead(DATA) == HIGH){ //1 ou HIGH ? + vérifier si c dans le bon sens
      encoder0Pos == HIGH;
    }
    else{
      encoder0Pos == LOW;
    }
  }
  delay(200); //Maybe à retoucher
}
*/
void Affichage_U (double u)
{
  display.clearDisplay();
  display.setTextSize(2);
  display.setTextColor(WHITE);

  Serial.println(u);
  display.setCursor(30, 0);
  display.println(F("Tension"));
  display.setCursor(40, 17);
  display.println(u);
  display.setCursor(90, 17);
  display.println(F("V"));
  display.display();
}


void Affichage_R (double r)
{
  display.clearDisplay();
  display.setTextSize(2);
  display.setTextColor(WHITE);

  Serial.println(r);
  display.setCursor(5, 0);
  display.println(F("Resistance"));
  display.setCursor(0, 17);
  display.println(r,1);
  display.setCursor(65, 17);
  display.println(F("Mohms"));
  display.display();
}
  

 /* robojaxText(String text, int x, int y,int size, boolean d)
 * text is the text string to be printed
 * x is the integer x position of text
 * y is the integer y position of text
 * z is the text size, 1, 2, 3 etc
 * d is either "true" or "false". Not sure, use true
 */
void robojaxText(String text, int x, int y,int size, boolean d) {

  display.setTextSize(size);
  display.setTextColor(WHITE);
  display.setCursor(x,y);
  display.println(text);
  if(d){
    display.display();
  }
  //delay(100);
} 
