#include <Arduino.h>
#include <U8g2lib.h>
#include <SPI.h>
#include <Wire.h>

U8G2_SSD1306_128X32_UNIVISION_F_HW_I2C u8g2(U8G2_R0);

const char ADDR[] = {22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52};
const char DATA[] = {39, 41, 43, 45, 47, 49, 51, 53};
#define CLOCK 2
#define READ_WRITE 3

void setup() {
   u8g2.begin();

  for (int n = 0; n < 16; n += 1) {
    pinMode(ADDR[n], INPUT);
  }
  for (int n = 0; n < 8; n += 1) {
    pinMode(DATA[n], INPUT);
  }
  pinMode(CLOCK, INPUT);
  pinMode(READ_WRITE, INPUT);

  attachInterrupt(digitalPinToInterrupt(CLOCK), onClock, RISING);

  Serial.begin(57600);
}

volatile unsigned int address = 0;
volatile unsigned int data = 0;
volatile unsigned int rw = 0;
volatile bool triggered = false;

void onClock() {
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
  triggered = true;

}

String isr_log[4] = {"", "", "", ""};

void loop() {
  if (triggered) {
    char output[9];

    noInterrupts();
    triggered = false;
    sprintf(output, "%04x %c %02x", address,  rw ? 'r' : 'W', data);
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
