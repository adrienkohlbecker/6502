ORIG=$8000 ; Address of first ROM byte
RESET=$fffc ; Address of reset vector
DDRB=$6002 ; Address of data direction register for PORT B
PORTB=$6000 ; Address of PORT B

; === main program === 

    org ORIG

init:
    lda #%11111111 ; Set all pins of PORTB to output
    sta DDRB

    lda #$55 ; load an initial value to port B
    sta PORTB

loop:
    ror ; rotate bits to the right in port B
    sta PORTB

    jmp loop

; === reset vector ===

    org RESET
    word init

; === final padding ===

    word $eaea