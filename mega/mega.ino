#include <Arduino.h>
#include <U8g2lib.h>
#include <SPI.h>
#include <Wire.h>

U8G2_SSD1306_128X32_UNIVISION_F_HW_I2C u8g2(U8G2_R0);

const char ADDR[] = {30, 31, 32, 33, 34, 35, 36, 37, 29, 28, 27, 26, 25, 24, 23, 22};
const char DATA[] = {42, 43, 44, 45, 46, 47, 48, 49};
#define CLOCK 53
#define SYNC 52
#define READ_WRITE 51

void setup() {
   u8g2.begin();

  for (int n = 0; n < 16; n += 1) {
    pinMode(ADDR[n], INPUT);
  }
  for (int n = 0; n < 8; n += 1) {
    pinMode(DATA[n], INPUT);
  }
  pinMode(CLOCK, INPUT);
  pinMode(SYNC, INPUT);
  pinMode(READ_WRITE, INPUT);

  // enable pin change interrupt on clock
  *digitalPinToPCICR(CLOCK) |= (1<<digitalPinToPCICRbit(CLOCK));
  *digitalPinToPCMSK(CLOCK) |= (1<<digitalPinToPCMSKbit(CLOCK));

  Serial.begin(57600);
}

volatile unsigned int address = 0;
volatile unsigned int data = 0;
volatile bool rw = 0;
volatile bool sync = 0;
volatile bool triggered = false;

ISR (PCINT0_vect) {
  if (!digitalRead(CLOCK)) { // interrupt fires for both edges
    return;
  }
  
  data = 0;
  address = 0;

  for (int n = 0; n < 16; n += 1) {
    int bit = digitalRead(ADDR[n]) ? 1 : 0;
    address = (address << 1) + bit;
  }

  for (int n = 0; n < 8; n += 1) {
    int bit = digitalRead(DATA[n]) ? 1 : 0;
    data = (data << 1) + bit;
  }

  rw = digitalRead(READ_WRITE);
  sync = digitalRead(SYNC);
  triggered = true;

}

String isr_log[4] = {"", "", "", ""};

void loop() {
  if (triggered) {
    char output[9];

    noInterrupts();
    triggered = false;
    sprintf(output, "%04x %c %02x %c", address,  rw ? 'r' : 'W', data, sync ? '*' : ' ');
    interrupts();

    Serial.println(output);

    for (int i=0; i<3; i++) {
      isr_log[i] = isr_log[i+1];
    }
    isr_log[3] = output;

   u8g2.clearBuffer();          // clear the internal memory
   u8g2.setFont(u8g2_font_pxplusibmcgathin_8f);  // choose a suitable font at https://github.com/olikraus/u8g2/wiki/fntlistall
   for (int i=0; i<4; i++) {
     u8g2.drawStr(0,8*(i+1),isr_log[i].c_str());  // write something to the internal memory
   }
   u8g2.sendBuffer();         // transfer internal memory to the display

  }
}
