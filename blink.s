ORIG=$8000 ; Address of first ROM byte
RESET=$fffc ; Address of reset vector
DDRA=$6003 ; Address of data direction register for PORT A
DDRB=$6002 ; Address of data direction register for PORT B
PORTA=$6001 ; Address of PORT A
PORTB=$6000 ; Address of PORT B

E  = %10000000
RW = %01000000
RS = %00100000

; === main program === 

    org ORIG

init:
    ldx #$ff ; initialize stack pointer to 01FF
    txs

    lda #%11111111 ; Set all pins of PORTB to output
    sta DDRB

    lda #%11100000 ; Set top 3 pins of PORTA to output
    sta DDRA

    lda #%00000001 ; Clear display
    jsr lcd_instruction

    lda #%00111000 ; Set 8 bit mode, 2 line display, 5x8 font
    jsr lcd_instruction

    lda #%0001110 ; Set display ON, cursor ON, blink OFF
    jsr lcd_instruction

    lda #%0000110 ; Increment and shift cursor; don't shift display
    jsr lcd_instruction

    ldx #0
print:
    lda message,x
    beq loop ; exit if zero flag is set; we're at end of null-terminated string
    jsr print_char
    inx
    jmp print

loop:
    jmp loop

message: asciiz "Hello, world!"

lcd_instruction:
    jsr lcd_wait

    sta PORTB
    
    lda #0 ; Clear RS/RW/E bits
    sta PORTA

    lda #E  ; Set the Enable bit to send the instruction
    sta PORTA
    
    lda #0 ; Clear RS/RW/E bits
    sta PORTA

    rts

print_char:
    jsr lcd_wait

    sta PORTB
    
    lda #RS ; Clear RW/E bits; Set RS
    sta PORTA

    lda #(RS | E)  ; Set the Enable bit + Register select to send the data
    sta PORTA
    
    lda #0 ; Clear RS/RW/E bits
    sta PORTA

    rts

lcd_wait: 
    pha

    lda #%00000000 ; PORT B is input
    sta DDRB

    lda #RW ; Clear RS/E bits; Set RW
    sta PORTA

    lda #(RW | E)  ; Set the Enable bit + RW to read the data
    sta PORTA

lcd_wait_loop:    
    lda PORTB

    and #%10000000 ; Get only value of busy flag
    bne lcd_wait_loop

    lda #0 ; Clear RS/RW/E bits
    sta PORTA

    lda #%11111111 ; PORT B is output
    sta DDRB

    pla
    rts

; === reset vector ===

    org RESET
    word init

; === final padding ===

    word $eaea