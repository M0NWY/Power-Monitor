// modded from the example

#include <SPI.h>
#include <RH_RF69.h>

// Singleton instance of the radio driver
RH_RF69 rf69;
//RH_RF69 rf69(15, 16); // For RF69 on PJRC breakout board with Teensy 3.1
String fudge = "" ;

void setup() 
{
  Serial.begin(9600);
  if (!rf69.init())
    Serial.println("init failed");
  // Defaults after init are 434.0MHz, modulation GFSK_Rb250Fd250, +13dbM
  // No encryption
  if (!rf69.setFrequency(433.0))
    Serial.println("setFrequency failed");
rf69.setModemConfig(RH_RF69::GFSK_Rb2Fd5);// long and slow :-)
 
  // If you are using a high power RF69, you *must* set a Tx power in the
  // range 14 to 20 like this:
//rf69.setTxPower(13);
Serial.print(RH_RF69_MAX_MESSAGE_LEN);
}
void loop()
{
fudge = "";
  uint8_t buf[RH_RF69_MAX_MESSAGE_LEN];
  uint8_t len = sizeof(buf);

  if (rf69.waitAvailableTimeout(500))
  { 
    // Should be a reply message for us now   
    
    if (rf69.recv(buf, &len))
    {
for (int i = 0; i < len ; i++)
    {  fudge += char(buf[i]);
    }
    // rf69.printBuffer("Got:", buf, len);
        Serial.println(fudge);
     //  Serial.println(len);

    }
    else
    {
      Serial.println("recv failed");
    }
  }
    
  delay(100);
}

