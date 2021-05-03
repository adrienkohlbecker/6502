; Memory Map
; 
; 0000 0000 0000 0000 - 0000 0000 1111 1111 | 0000 - 00FF | Zero page
; 0000 0000 0001 0000 - 0000 0001 1111 1111 | 0100 - 01FF | Stack
; 0000 0000 0010 0000 - 0111 1111 1011 1111 | 0200 - 7FBF | RAM
; 0111 1111 1100 0000 - 0111 1111 1111 1111 | 7FC0 - 07FF | I/O

; I/O:
; 
; 0111 1111 1100 0000 - 0111 1111 1100 1111 | 7FC0 - 7FCF | I/O #1
; 0111 1111 1101 0000 - 0111 1111 1101 1111 | 7FD0 - 7FDF | I/O #2
; 0111 1111 1110 0000 - 0111 1111 1110 1111 | 7FE0 - 7FEF | I/O #3
; 0111 1111 1111 0000 - 0111 1111 1111 1111 | 7FF0 - 7FFF | I/O #4

ORIG=$8000 ; Address of first ROM byte
VECTOR=$fffa ; Address of vector locations
IO_1_DDRA=$7FC3 ; Address of data direction register for PORT A
IO_1_DDRB=$7FC2 ; Address of data direction register for PORT B
IO_1_PORTA=$7FC1 ; Address of PORT A
IO_1_PORTB=$7FC0 ; Address of PORT B
IO_1_IFR=$7FCD ; Address of interupt flag register
IO_1_IER=$7FCE ; Address of interupt enable register
IO_1_PCR=$7FCC ; Address of peripheral control register
IO_2_DDRA=$7FD3 ; Address of data direction register for PORT A
IO_2_DDRB=$7FD2 ; Address of data direction register for PORT B
IO_2_PORTA=$7FD1 ; Address of PORT A
IO_2_PORTB=$7FD0 ; Address of PORT B
IO_2_IFR=$7FDD ; Address of interupt flag register
IO_2_IER=$7FDE ; Address of interupt enable register
IO_2_PCR=$7FDC ; Address of peripheral control register

E  = %10000000
RW = %01000000
RS = %00100000

value = $0200 ; 2 bytes
mod10 = $0202 ; 2 bytes
message = $0204 ; 6 bytes
counter = $020a ; 2 bytes

; === main program === 

    org ORIG

init:
    ldx #$ff ; initialize stack pointer to 01FF
    txs

    cli ; enable interrupt handling

    lda #%10010000 ; enable interrupt on CB1
    sta IO_2_IFR

    lda #%10010000 ; enable interrupt on CB1
    sta IO_2_IER

    lda #%00010000 ; Set CB1 to positive going edge
    sta IO_2_PCR

    lda #%11100000 ; Set top 3 pins of IO_1_PORTA to output
    sta IO_1_DDRA

    lda #%00000000 ; Set all pins of IO_2_PORTB to input
    sta IO_2_DDRB

    lda #%00000001 ; Clear display
    jsr lcd_instruction

    lda #%00111000 ; Set 8 bit mode, 2 line display, 5x8 font
    jsr lcd_instruction

    lda #%0001110 ; Set display ON, cursor ON, blink OFF
    jsr lcd_instruction

    lda #%0000110 ; Increment and shift cursor; don't shift display
    jsr lcd_instruction

; ==== start printing counter ===

    lda #0
    sta counter
    sta counter + 1

loop:

    lda #%00000010 ; Set cursor to home
    jsr lcd_instruction

    ; init message to ""
    lda #0
    sta message

    ; initialize value to be the number to convert
    lda counter
    sta value
    lda counter + 1
    sta value + 1

divide:
    ; initialize remainder to zero
    lda #0
    sta mod10
    sta mod10 +1 

    ; clear carry bit
    clc

    ; initialize x register
    ldx #16

divloop:
    ; rotate quotient and remainder
    rol value
    rol value + 1
    rol mod10
    rol mod10 + 1

    ; a,y = dividend - diviser
    sec
    lda mod10
    sbc #10
    tay ; save low byte of substraction in Y
    lda mod10 + 1
    sbc #0

    ; if we didn't borrow (dividend < diviser), ignore the result
    bcc ignore_result

    sty mod10
    sta mod10 + 1

ignore_result:
    dex
    bne divloop

    rol value ; shift in the last value of the quotient
    rol value + 1

    lda mod10 ; digit is in lower byte of mod10
    
    ; get ascii code for number
    clc
    adc #"0" 

    ; print answer
    jsr push_char

    ; if value != 0 then continue dividing
    lda value
    ora value + 1
    bne divide ; branch if value not zero


    ldx #0
print:
    lda message,x
    beq loop ; exit if zero flag is set; we're at end of null-terminated string
    jsr print_char
    inx
    jmp print

number: word 1729

lcd_instruction:
    jsr lcd_wait

    sta IO_1_PORTB
    
    lda #0 ; Clear RS/RW/E bits
    sta IO_1_PORTA

    lda #E  ; Set the Enable bit to send the instruction
    sta IO_1_PORTA
    
    lda #0 ; Clear RS/RW/E bits
    sta IO_1_PORTA

    rts

push_char: ; add the character in the A register to the beginning of the null-terminated string `message`
    pha ; push new first char onto stack
    ldy #0

char_loop:
    lda message,y ; get char on string and put into x
    tax
    pla
    sta message,y ; pull char off stack and add it to the string
    iny
    txa
    pha ; push char from string onto stack

    bne char_loop ; if a is 0 then we reached the end of the string

    pla
    sta message,y ; pull the null terminator off the stack and add it at the end

    rts

print_char:
    jsr lcd_wait

    sta IO_1_PORTB
    
    lda #RS ; Clear RW/E bits; Set RS
    sta IO_1_PORTA

    lda #(RS | E)  ; Set the Enable bit + Register select to send the data
    sta IO_1_PORTA
    
    lda #0 ; Clear RS/RW/E bits
    sta IO_1_PORTA

    rts

lcd_wait: 
    pha

    lda #%00000000 ; PORT B is input
    sta IO_1_DDRB

    lda #RW ; Clear RS/E bits; Set RW
    sta IO_1_PORTA

    lda #(RW | E)  ; Set the Enable bit + RW to read the data
    sta IO_1_PORTA

lcd_wait_loop:    
    lda IO_1_PORTB

    and #%10000000 ; Get only value of busy flag
    bne lcd_wait_loop

    lda #0 ; Clear RS/RW/E bits
    sta IO_1_PORTA

    lda #%11111111 ; PORT B is output
    sta IO_1_DDRB

    pla
    rts

nmi:
    rti

irq: 
    inc counter
    bne exit_irq
    inc counter + 1
exit_irq:
    bit IO_2_PORTB ; read IO_2_PORTB, to clear the interrupt, and update status flags. Ok because processor resets status after exiting an interrupt
    rti

; === vector locations ===

    org VECTOR
    word nmi
    word init
    word irq