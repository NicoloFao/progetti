//LIBRERIE DHT E MAX
#include "DHT.h"
#include "max6675.h"
//PIN DHT
#define DHTPIN 7  
#define DHTTYPE DHT11   // DHT 11
DHT dht(DHTPIN, DHTTYPE);//pin e tipo

//PIN MAX
unsigned long old_millis=0;
unsigned long delta=600;
int minuti=1;
int thermoDO = 6;
int thermoCS = 5;
int thermoCLK = 4;
float valoretermocoppia=0;
MAX6675 thermocouple(thermoCLK, thermoCS, thermoDO);

//SETUP
void setup()
{
  //COMUNICAZIONE INIZIALE MONITOR SERIALE
  Serial.begin(9600);
  Serial.println(F("DHT11 e Max6675"));
  dht.begin();
  
  //PIN LED
  pinMode(8,OUTPUT);
  pinMode(10,OUTPUT);
  delay(500);
}

void loop()
{

  
//T=LETTURA UMIDITA
//h=LETTURA UMIDITA

  unsigned long now=millis();


  delay(2000);
  float h = dht.readHumidity(); 
  float t = dht.readTemperature();
  float f = dht.readTemperature(true);
  
  
   if (isnan(h) || isnan(t) || isnan(f)) // funzione isnan che restituisce true se il parametro non è un numero
  {
    Serial.println(F("Failed to read from DHT sensor!"));
    return;
  }
  

 //SCRIVI SUL MONITOR UMIDITA E TEMPERATURA

  Serial.print(F("Humidity: "));
  Serial.print(h);
  Serial.print(F("%  Temperature: "));
  Serial.print(t);
  Serial.print(F("°C "));
  
  //LETTURA  E SCRITTURA TERMOCOPPIA
  Serial.print("TERMOCOPPIA");
  Serial.println(thermocouple.readCelsius());
  valoretermocoppia=thermocouple.readCelsius();

 
  
  //LED 
   if(valoretermocoppia>=28)
  {
  digitalWrite (8,HIGH);
  }

  if(valoretermocoppia<=27)
  {
    digitalWrite(8,LOW);
  }
  if((valoretermocoppia>=27)&&(valoretermocoppia<=28))
  {
     digitalWrite (10,HIGH);
  }
  else(digitalWrite (10,LOW));

}
