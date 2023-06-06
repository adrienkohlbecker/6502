lcd_instruction:
    jsr lcd_wait

    sei ; interrupt uses port A
    sta IO_1_PORTA

    lda #0 ; Clear RS/RW/E bits
    sta IO_1_PORTB

    lda #E  ; Set the Enable bit to send the instruction
    sta IO_1_PORTB

    lda #0 ; Clear RS/RW/E bits
    sta IO_1_PORTB

    cli    ; re-enable interrupts
    rts

print_char:
    jsr lcd_wait

    sei ; interrupt uses port A

    sta IO_1_PORTA

    lda #RS ; Clear RW/E bits; Set RS
    sta IO_1_PORTB

    lda #(RS | E)  ; Set the Enable bit + Register select to send the data
    sta IO_1_PORTB

    lda #0 ; Clear RS/RW/E bits
    sta IO_1_PORTB

    cli    ; re-enable interrupts
    rts

lcd_read_address:

    sei ; donc want interrupts driving PORT A while the LCD is also driving it
    lda #%00000000 ; Set all pins of IO_1_PORTA to input
    sta IO_1_DDRA

    lda #RW ; Clear RS/E bits; Set RW
    sta IO_1_PORTB

    lda #(RW | E)  ; Set the Enable bit + RW to read the data
    sta IO_1_PORTB

    lda IO_1_PORTA
    pha

    lda #0 ; Clear RS/RW/E bits
    sta IO_1_PORTB

    lda #%11111111 ; Set all pins of IO_1_PORTA to output
    sta IO_1_DDRA
    cli ; re-enable interrupts

    pla
    rts

lcd_wait:
    pha

    sei ; donc want interrupts driving PORT A while the LCD is also driving it
    lda #%00000000 ; PORT A is input
    sta IO_1_DDRA

.lcd_wait_loop:
    lda #RW ; Clear RS/E bits; Set RW
    sta IO_1_PORTB

    lda #(RW | E)  ; Set the Enable bit + RW to read the data
    sta IO_1_PORTB

    lda IO_1_PORTA
    bit #%10000000 ; Get only value of busy flag
    bne .lcd_wait_loop

    lda #0 ; Clear RS/RW/E bits
    sta IO_1_PORTB

    lda #%11111111 ; PORT A is output
    sta IO_1_DDRA
    cli ; re-enable interrupts

    pla
    rts
