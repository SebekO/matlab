#include <SD.h>
#include <SPI.h>
#include "DGS.h"

File myFile;
const int chipSelect = BUILTIN_SDCARD;
DGS mySensor1(&Serial1);
DGS mySensor2(&Serial2);

void setup(){
  Serial.begin(9600);
  Serial1.begin(9600);
  Serial2.begin(9600);
  Serial.flush();
  Serial1.flush();
  Serial2.flush();
  
  
  while (!Serial) {
  }
  //////////////////////////////////////////////////SD//////////////////////////////////////////
  Serial.print("Initializing SD card...");
  if (!SD.begin(chipSelect)) {
    Serial.println("initialization failed!");
    return;
  }
  Serial.println("initialization done."); 
  ///////////////////////////////////////////////////DGS////////////////////////////////////////
  Serial.println("Begin Setup");
  mySensor1.DEBUG = false;
  mySensor2.DEBUG = false;
  Serial.println("Enter 'Z' When Sensor is Stabilized");
  while (Serial.read() != 'Z') {}
  if (mySensor1.zero()) Serial.println("Finished Setting Sensor1 Zero"); //zeros returns 1/0
  if (mySensor2.zero()) Serial.println("Finished Setting Sensor2 Zero"); //zeros returns 1/0
  Serial.println();
  Serial.println("Finished Setup");
}

void loop(){
  myFile = SD.open("test.txt", FILE_WRITE);
    if (myFile) {
      mySensor1.getData('\r');
      mySensor2.getData('\r');
      long conc1=(mySensor1.getConc('c'));
      long conc2=(mySensor2.getConc('c'));
      long time1=(mySensor1.getTime('s'));
      long time2=(mySensor2.getTime('s'));
      long temp1=(mySensor1.getTemp('c'));
      long temp2=(mySensor2.getTemp('c'));
      long hum1=(mySensor1.getRh('c'));
      long hum2=(mySensor2.getRh('c'));
      myFile.println("n0: s_time:  cont: temp: hum: ");
      myFile.print("1:");
      myFile.print(time1);
      myFile.print(" ");
      myFile.print(conc1);
      myFile.print(" ");
      myFile.print(temp1);
      myFile.print(" ");
      myFile.println(hum1);
      myFile.print("2:");
      myFile.print(time2);
      myFile.print(" ");
      myFile.print(conc2);
      myFile.print(" ");
      myFile.print(temp2);
      myFile.print(" ");
      myFile.print(hum2);

      Serial.println("n0: s_time:  cont: temp: hum: ");
      Serial.print("1:");
      Serial.print(time1);
      Serial.print(" ");
      Serial.print(conc1);
      Serial.print(" ");
      Serial.print(temp1);
      Serial.print(" ");
      Serial.println(hum1);
      Serial.print("2:");
      Serial.print(time2);
      Serial.print(" ");
      Serial.print(conc2);
      Serial.print(" ");
      Serial.print(temp2);
      Serial.print(" ");
      Serial.println(hum2);
      
      myFile.close();
    } 
  else {
    Serial.println("error opening test.txt");
  }
  while (Serial.available()) // read from Serial port, send to port SDK port
  {
    char U = Serial.read();
    if (U == 'Z') {
      if (mySensor1.zero()) Serial.println("Finished Setting Sensor 1 Zero"); //zeros returns 1/0
      if (mySensor2.zero()) Serial.println("Finished Setting Sensor 2 Zero"); //zeros returns 1/0
    }
    if (U == 'f') {
      Serial.print(mySensor1.getFW());
      Serial.print(", ");
      Serial.println(mySensor2.getFW());
    }
    if (U == 'e') {
      mySensor1.DEBUG = true;
      mySensor2.DEBUG = true;
      mySensor1.getEEPROM();
      mySensor2.getEEPROM();
    }
  }
}
