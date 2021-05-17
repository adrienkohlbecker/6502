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

E  = %10000000 ; LCD Enable
RW = %01000000 ; LCD RW
RS = %00100000 ; LCD register select
KBS = %00010000 ; keyboard shift register
KB_VALID = %00001000 ; keyboard packet valid input

kb_buffer = $0600 ; 256-byte keyboard buffer 0200-02ff

kb_wptr = $0000
kb_rptr = $0001
kb_flags = $0002

RELEASE = %00000001
SHIFT_LEFT = %00000010
SHIFT_RIGHT = %00000100
CIRCUMFLEX = %00001000
DIAERESIS = %00010000

; === main program ===

    org ORIG

init:
    ldx #$ff ; initialize stack pointer to 01FF
    txs

    cld ; clear decimal arithmetic mode
    cli ; enable interrupt handling

    lda #%10010000 ; enable interrupt on CB1
    sta IO_2_IFR

    lda #%10010000 ; enable interrupt on CB1
    sta IO_2_IER

    lda #%00010000 ; Set CB1 to positive going edge
    sta IO_2_PCR

    lda #%00000000 ; ensure all ports are 0
    sta IO_1_PORTA
    sta IO_1_PORTB
    sta IO_2_PORTA
    sta IO_2_PORTB

    lda #%11100000 ; Set top 3 pins of IO_1_PORTA to output
    sta IO_1_DDRA

    lda #%11111111 ; Set all pins of IO_1_PORTB to output
    sta IO_1_DDRB

    lda #%00010000 ; Set top 4th pins of IO_2_PORTA to output
    sta IO_2_DDRA

    lda #%11111111 ; Set all pins of IO_2_PORTB to output
    sta IO_2_DDRB

    lda #%00000001 ; Clear display
    jsr lcd_instruction

    lda #%00111000 ; Set 8 bit mode, 2 line display, 5x8 font
    jsr lcd_instruction

    lda #%0001111 ; Set display ON, cursor ON, blink ON
    jsr lcd_instruction

    lda #%0000110 ; Increment and shift cursor; don't shift display
    jsr lcd_instruction

    lda #$00 ; initialize keyboard pointers to 0
    sta kb_wptr
    sta kb_rptr
    sta kb_flags

loop:
    sei         ; pointers are set in interrupt, briefly disable interrupts while we read them
    lda kb_rptr
    cmp kb_wptr
    cli         ; re-enable interrupts
    bne key_pressed ; if the two pointers aren't equal, some key must have been pressed
    jmp loop

key_pressed:
    ldx kb_rptr
    lda kb_buffer, x
    jsr handle_keypress
    inc kb_rptr
    jmp loop

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

handle_keypress:
    cmp #$00 ; ignore non supported keys
    beq exit_handle_keypress

    cmp #$1B ; escape
    beq clear_screen

    cmp #$08 ; backspace
    beq backspace

    cmp #$0a ; line feed
    beq line_feed

    cmp #$11 ; DC1 mapped to left arrow
    beq left_arrow

    jsr print_char
    rts

exit_handle_keypress:
    rts

clear_screen:
    lda #%00000001 ; Clear display
    jsr lcd_instruction
    rts

backspace:
    lda #%00010000 ; shift cursor left
    jsr lcd_instruction

    lda #$20 ; space
    jsr print_char

    lda #%00010000 ; shift cursor left
    jsr lcd_instruction

    rts

line_feed:
    jsr lcd_read_address ; note, this will clear our line feed from the A register
    and #%01000000 ; check value of higher order addres bit; 1 means we're in the second line
    bne exit_line_feed ; if we're already on the second line, ignore

    lda #%11000000 ; set address to 40 = first char in second line
    jsr lcd_instruction

exit_line_feed:
    rts

left_arrow:
    lda #%00010000 ; shift cursor left
    jsr lcd_instruction

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

lcd_wait_loop:
    lda #RW ; Clear RS/E bits; Set RW
    sta IO_1_PORTA

    lda #(RW | E)  ; Set the Enable bit + RW to read the data
    sta IO_1_PORTA

    lda IO_1_PORTB
    and #%10000000 ; Get only value of busy flag
    bne lcd_wait_loop

    lda #0 ; Clear RS/RW/E bits
    sta IO_1_PORTA

    lda #%11111111 ; PORT B is output
    sta IO_1_DDRB
    cli ; re-enable interrupts

    pla
    rts

nmi:
    rti

irq:
    pha
    txa
    pha

    lda #%00000000 ; PORT B is input
    sta IO_2_DDRB

    lda #KBS ; Enable shift register output
    sta IO_2_PORTA

    lda IO_2_PORTB ; read scan code into A register
    pha

    lda IO_2_PORTA ; read if the packet is valid
    pha

    lda #%00000000 ; disable shift register output
    sta IO_2_PORTA

    lda #%11111111 ; PORT B is output
    sta IO_2_DDRB

    pla
    and #KB_VALID
    beq invalid_packet

    lda kb_flags
    and #RELEASE ; if releasing a key
    beq read_key

    lda kb_flags
    eor #RELEASE  ; reset the releasing bit
    sta kb_flags

    pla ; get scancode from stack

    cmp #$12
    beq shift_left_up
    cmp #$59
    beq shift_right_up

    jmp exit_irq

read_key:
    pla ; get scancode from stack

    cmp #$aa        ; if the scan code is  BAT (Basic Assurance Test) OK  https://www.win.tue.nl/~aeb/linux/kbd/scancodes-1.html#ss1.2
    beq exit_irq    ; ignore it

    cmp #$f0        ; if the scan code is key release
    beq key_release ; set release flag

    cmp #$12
    beq shift_left_down
    cmp #$59
    beq shift_right_down
    cmp #$54
    beq circumflex_down

    tax
    lda kb_flags
    and #SHIFT_LEFT
    bne shifted_key

    lda kb_flags
    and #SHIFT_RIGHT
    bne shifted_key

    lda kb_flags
    and #CIRCUMFLEX
    bne circumflex_key

    lda kb_flags
    and #DIAERESIS
    bne diaeresis_key

    lda keymap, x ; convert scancode to char
    jsr push_key
    jmp exit_irq

invalid_packet:
    pla ; get scancode from stack
    lda #$a4 ; write ¤ to signify an invalid packet was received
    jsr push_key
    jmp exit_irq

shifted_key:
    lda kb_flags
    and #CIRCUMFLEX
    bne shifted_circumflex_key

    lda kb_flags
    and #DIAERESIS
    bne shifted_diaeresis_key

    lda keymap_shifted, x ; convert scancode to char with shift
    jsr push_key
    jmp exit_irq

push_key:
    ldx kb_wptr    ; write scancode in the buffer at offset kb_wptr
    sta kb_buffer, x
    inc kb_wptr    ; increment pointer
    rts

shift_left_down:
    lda kb_flags
    ora #SHIFT_LEFT
    sta kb_flags
    jmp exit_irq

shift_left_up:
    lda kb_flags
    eor #SHIFT_LEFT ; flip the shift bit
    sta kb_flags
    jmp exit_irq

shift_right_down:
    lda kb_flags
    ora #SHIFT_RIGHT
    sta kb_flags
    jmp exit_irq

shift_right_up:
    lda kb_flags
    eor #SHIFT_RIGHT ; flip the shift bit
    sta kb_flags
    jmp exit_irq

key_release:
    lda kb_flags
    ora #RELEASE
    sta kb_flags
    jmp exit_irq

diaeresis_key:
    lda kb_flags
    eor #DIAERESIS ; flip the diaeresis bit
    sta kb_flags

    lda keymap_diaeresis, x ; convert scancode to char with shift
    jsr push_key
    jmp exit_irq

circumflex_key:
    lda kb_flags
    eor #CIRCUMFLEX ; flip the circumflex bit
    sta kb_flags

    lda keymap_circumflex, x ; convert scancode to char with shift
    jsr push_key
    jmp exit_irq

exit_irq:
    pla
    tax
    pla
    rti

circumflex_down:
    lda kb_flags
    and #SHIFT_LEFT
    bne diaeresis_down

    lda kb_flags
    and #SHIFT_RIGHT
    bne diaeresis_down

    lda kb_flags
    ora #CIRCUMFLEX
    sta kb_flags

    lda #$5e ; ^ char
    jsr push_key
    lda #$11 ; DC1 mapped to left arrow
    jsr push_key

    jmp exit_irq

diaeresis_down:
    lda kb_flags
    ora #DIAERESIS
    sta kb_flags

    lda #$a8 ; ¨ char
    jsr push_key
    lda #$11 ; DC1 mapped to left arrow
    jsr push_key

    jmp exit_irq

shifted_diaeresis_key:
    lda kb_flags
    eor #DIAERESIS ; flip the diaeresis bit
    sta kb_flags

    lda keymap_diaeresis_shifted, x ; convert scancode to char with diaeresis + shift
    jsr push_key
    jmp exit_irq

shifted_circumflex_key:
    lda kb_flags
    eor #CIRCUMFLEX ; flip the circumflex bit
    sta kb_flags

    lda keymap_circumflex_shifted, x ; convert scancode to char with circumflex + shift
    jsr push_key
    jmp exit_irq
    org $f900

keymap: incbin "layout/keys_unshifted.bin"
keymap_shifted: incbin "layout/keys_shifted.bin"
keymap_diaeresis: incbin "layout/keys_diaeresis_unshifted.bin"
keymap_diaeresis_shifted: incbin "layout/keys_diaeresis_shifted.bin"
keymap_circumflex: incbin "layout/keys_circumflex_unshifted.bin"
keymap_circumflex_shifted: incbin "layout/keys_circumflex_shifted.bin"

; === vector locations ===

    org VECTOR
    word nmi
    word init
    word irq
