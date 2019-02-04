//LIBRERIE DHT E MAX
#include "DHT.h"
#include "max6675.h"
//PIN DHT
#define DHTPIN 7
#define DHTTYPE DHT11        // DHT 11
DHT dht(DHTPIN, DHTTYPE);    //pin e tipo
int buttonpin = 11;
int last_state = 0;

//PIN MAX
int thermoDO = 6;
int thermoCS = 5;
int thermoCLK = 4;
float valoretermocoppia = 0;
MAX6675 thermocouple(thermoCLK, thermoCS, thermoDO);

//TEMPO
//unsigned long old_millis = 0;
//unsigned long delta = 1000;
int minuti = 1;

//SETUP
void setup()
{
  pinMode(buttonpin, INPUT);
  //COMUNICAZIONE INIZIALE MONITOR SERIALE
  Serial.begin(9600);
  Serial.println("time,thermocuple,temperatura");
  dht.begin();

  //PIN LED
  //pinMode(8, OUTPUT);
  //pinMode(10, OUTPUT);
  //delay(500);
}

void loop()
{
  //T=LETTURA UMIDITA
  //h=LETTURA UMIDITA

  unsigned long now = millis();


  //delay(2000);
  float h = dht.readHumidity();
  float t = dht.readTemperature();
  float Termo = thermocouple.readCelsius();
  int button_state = digitalRead(buttonpin);
  if (button_state == HIGH && button_state != last_state) {

    Serial.print(minuti);
    Serial.print(" , ");
    Serial.print(Termo);
    Serial.print(" , ");
    Serial.println(t);
    //old_millis = now;
    minuti = minuti + 1;
  }
  last_state = button_state;
}
