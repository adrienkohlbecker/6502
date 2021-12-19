byte font[] = {
    0b00111111,  //  0
    0b00000110,  //  1
    0b01011011,  //  2
    0b01001111,  //  3
    0b01100110,  //  4
    0b01101101,  //  5
    0b01111101,  //  6
    0b00000111,  //  7
    0b01111111,  //  8
    0b01101111,  //  9
    0b01110111,  //  A
    0b01111100,  //  B
    0b00111001,  //  C
    0b01011110,  //  D
    0b01111001,  //  E
    0b01110001   //  F
};

const int PIN_ZERO_OUT = A1;
const int PIN_ZERO_IN = A0;
const int PIN_LE = PIN_ZERO_IN;
const int PIN_MODE = A2;
const int PIN_LEFT_DIGIT = A3;
const int PIN_RIGHT_DIGIT = A4;

volatile bool isLatch = true;

void setup() {
  // set port C as INPUT by default
  DDRC = 0b0000000;
  PORTC = 0b0000000; 

  // set port B as INPUT
  // this is the input data
  DDRB = 0b00000000;
  PORTB = 0b11111111; 

  // set port D as OUTPUT
  // this is what is driving the LEDs
  DDRD = 0b11111111;
  PORTD = 0b00000000;

  pinMode(PIN_LEFT_DIGIT, OUTPUT);
  pinMode(PIN_RIGHT_DIGIT, OUTPUT);
  pinMode(PIN_MODE, INPUT_PULLUP);

  isLatch = digitalRead(PIN_MODE);
  if (isLatch) {
    pinMode(PIN_LE, INPUT_PULLUP);
    pinMode(PIN_ZERO_OUT, INPUT);

    updateLatch();

    PCICR |= 0b00000010; // activate PCINT on port C
    PCMSK1 |= 0b00000001; // activate PCINT on PC0
     
  } else {
    pinMode(PIN_ZERO_IN, INPUT_PULLUP);
    pinMode(PIN_ZERO_OUT, OUTPUT); 
  }
}

volatile bool latched;
volatile int previousValue;

void updateLatch() {
  if (digitalRead(PIN_LE)) {
    previousValue = 0;
    latched = false;
  } else {
    previousValue = PINB;
    latched = true;
  }
}

ISR (PCINT1_vect) {
  updateLatch();
}

void loop() {
    int value;
    int digit;
    bool zeroIn;

    if (latched) {
      value = previousValue;
    } else {
      value = PINB;
    }

    if (isLatch) {
      zeroIn = false;
    } else {
      zeroIn = digitalRead(PIN_ZERO_IN);

      if (zeroIn) {
        digitalWrite(PIN_ZERO_OUT, value == 0);
      }
    } 
    
    // left digit
    digit = value >> 4;
    PORTD=(zeroIn && digit == 0) ? 0 : font[digit];
    
    digitalWrite(PIN_LEFT_DIGIT, HIGH);
    delay(1);
    digitalWrite(PIN_LEFT_DIGIT, LOW);

    // right digit
    digit = value & 0b00001111;
    PORTD=(zeroIn && value == 0) ? 0 : font[digit];
    
    digitalWrite(PIN_RIGHT_DIGIT, HIGH);
    delay(1);
    digitalWrite(PIN_RIGHT_DIGIT, LOW);
}
