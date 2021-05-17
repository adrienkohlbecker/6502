lcd_instruction:
    jsr lcd_wait

    sei ; interrupt uses port B
    sta IO_1_PORTB

    lda #0 ; Clear RS/RW/E bits
    sta IO_1_PORTA

    lda #E  ; Set the Enable bit to send the instruction
    sta IO_1_PORTA

    lda #0 ; Clear RS/RW/E bits
    sta IO_1_PORTA

    cli    ; re-enable interrupts
    rts

print_char:
    jsr lcd_wait

    sei ; interrupt uses port B

    sta IO_1_PORTB

    lda #RS ; Clear RW/E bits; Set RS
    sta IO_1_PORTA

    lda #(RS | E)  ; Set the Enable bit + Register select to send the data
    sta IO_1_PORTA

    lda #0 ; Clear RS/RW/E bits
    sta IO_1_PORTA

    cli    ; re-enable interrupts
    rts

lcd_read_address:

    sei ; donc want interrupts driving PORT B while the LCD is also driving it
    lda #%00000000 ; Set all pins of IO_1_PORTB to input
    sta IO_1_DDRB

    lda #RW ; Clear RS/E bits; Set RW
    sta IO_1_PORTA

    lda #(RW | E)  ; Set the Enable bit + RW to read the data
    sta IO_1_PORTA

    lda IO_1_PORTB
    pha

    lda #0 ; Clear RS/RW/E bits
    sta IO_1_PORTA

    lda #%11111111 ; Set all pins of IO_1_PORTB to output
    sta IO_1_DDRB
    cli ; re-enable interrupts

    pla
    rts

lcd_wait:
    pha

    sei ; donc want interrupts driving PORT B while the LCD is also driving it
    lda #%00000000 ; PORT B is input
    sta IO_1_DDRB

.lcd_wait_loop:
    lda #RW ; Clear RS/E bits; Set RW
    sta IO_1_PORTA

    lda #(RW | E)  ; Set the Enable bit + RW to read the data
    sta IO_1_PORTA

    lda IO_1_PORTB
    and #%10000000 ; Get only value of busy flag
    bne .lcd_wait_loop

    lda #0 ; Clear RS/RW/E bits
    sta IO_1_PORTA

    lda #%11111111 ; PORT B is output
    sta IO_1_DDRB
    cli ; re-enable interrupts

    pla
    rts
