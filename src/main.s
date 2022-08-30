; Memory Map
;
; 0000 0000 0000 0000 - 0000 0000 1111 1111 | 0000 - 00FF | Zero page
; 0000 0001 0000 0000 - 0000 0001 1111 1111 | 0100 - 01FF | Stack
; 0000 0010 0000 0000 - 0001 1111 1111 1111 | 0200 - 1FFF | RAM (7680)
; 0010 0000 0000 0000 - 0100 0101 1111 1111 | 2000 - 45FF | Framebuffer (9728)
; 0110 0000 0000 0000 - 0111 1111 1011 1111 | 4600 - 7FBF | RAM (14784)
; 0111 1111 1100 0000 - 0111 1111 1111 1111 | 7FC0 - 07FF | I/O

; I/O:
;
; 0111 1111 1100 0000 - 0111 1111 1100 1111 | 7FC0 - 7FCF | I/O #1
; 0111 1111 1101 0000 - 0111 1111 1101 1111 | 7FD0 - 7FDF | I/O #2
; 0111 1111 1110 0000 - 0111 1111 1110 1111 | 7FE0 - 7FEF | I/O #3
; 0111 1111 1111 0000 - 0111 1111 1111 1111 | 7FF0 - 7FFF | I/O #4

; IO #1
IO_1_DDRA  = $7FC3 ; Address of data direction register for PORT A
IO_1_DDRB  = $7FC2 ; Address of data direction register for PORT B
IO_1_PORTA = $7FC1 ; Address of PORT A
IO_1_PORTB = $7FC0 ; Address of PORT B
IO_1_IFR   = $7FCD ; Address of interupt flag register
IO_1_IER   = $7FCE ; Address of interupt enable register
IO_1_PCR   = $7FCC ; Address of peripheral control register

; PORT A signal to pin mapping
E        = %00000001 ; LCD Enable
RW       = %00000010 ; LCD RW
RS       = %00000100 ; LCD register select
KBS      = %00001000 ; keyboard shift register
KB_VALID = %00010000 ; keyboard packet valid input

; zero page locations
kb_wptr = $0000 ; 1 byte
kb_rptr = $0001 ; 1 byte
kb_flags = $0002 ; 1 byte
kb_deadkey_flags = $0003 ; 1 byte
vidpage = $0004 ; 2 bytes
start_color = $0006 ; 1 byte

; memory locations
kb_buffer = $0200 ; 256-byte keyboard buffer 0200-02ff

; === main program ===

    org $8000

    include keyboard.s
    include lcd.s
    include vga.s
    include binhex.s

keymap: incbin "layout/keys_unshifted.bin"
keymap_shifted: incbin "layout/keys_shifted.bin"
keymap_altgr: incbin "layout/keys_altgr.bin"
keymap_diaeresis: incbin "layout/keys_diaeresis_unshifted.bin"
keymap_diaeresis_shifted: incbin "layout/keys_diaeresis_shifted.bin"
keymap_circumflex: incbin "layout/keys_circumflex_unshifted.bin"
keymap_circumflex_shifted: incbin "layout/keys_circumflex_shifted.bin"
keymap_tilde: incbin "layout/keys_tilde_unshifted.bin"
keymap_tilde_shifted: incbin "layout/keys_tilde_shifted.bin"
keymap_grave_accent: incbin "layout/keys_grave_accent_unshifted.bin"
keymap_grave_accent_shifted: incbin "layout/keys_grave_accent_shifted.bin"

init:
    ldx #$ff ; initialize stack pointer to 01FF
    txs

    cli ; enable interrupt handling

    lda #%10010000 ; enable interrupt on CB1
    sta IO_1_IFR

    lda #%10010000 ; enable interrupt on CB1
    sta IO_1_IER

    lda #%00010000 ; Set CB1 to positive going edge
    sta IO_1_PCR

    stz IO_1_PORTA ; ensure all ports are 0
    stz IO_1_PORTB

    lda #%00001111 ; Set bottom 4 pins of IO_1_PORTA to output
    sta IO_1_DDRA

    lda #%11111111 ; Set all pins of IO_1_PORTB to output
    sta IO_1_DDRB

    lda #%00000001 ; Clear display
    jsr lcd_instruction

    lda #%00111000 ; Set 8 bit mode, 2 line display, 5x8 font
    jsr lcd_instruction

    lda #%0001111 ; Set display ON, cursor ON, blink ON
    jsr lcd_instruction

    lda #%0000110 ; Increment and shift cursor; don't shift display
    jsr lcd_instruction

     ; initialize memory locations with 0
    stz kb_wptr
    stz kb_rptr
    stz kb_flags
    stz kb_deadkey_flags
    stz start_color

    lda # ">"
    jsr print_char
    lda # " "
    jsr print_char

loop:
    sei         ; pointers are set in interrupt, briefly disable interrupts while we read them
    lda kb_rptr
    cmp kb_wptr
    cli         ; re-enable interrupts
    bne key_pressed ; if the two pointers aren't equal, some key must have been pressed

    jsr vga_loop
    jmp loop

key_pressed:
    ldx kb_rptr
    lda kb_buffer, x
    jsr handle_keypress
    inc kb_rptr
    jmp loop

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
    ; fallthrough

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
    bit #%01000000 ; check value of higher order addres bit; 1 means we're in the second line
    bne exit_line_feed ; if we're already on the second line, ignore

    lda #%11000000 ; set address to 40 = first char in second line
    jsr lcd_instruction

exit_line_feed:
    rts

left_arrow:
    lda #%00010000 ; shift cursor left
    jsr lcd_instruction

    rts

nmi:
    rti

irq:
    pha
    phx
    phy

    lda #%00000000 ; PORT B is input
    sta IO_1_DDRB

    lda #KBS ; Enable shift register output
    sta IO_1_PORTA

    lda IO_1_PORTB ; read scan code into A register
    pha

    lda IO_1_PORTA ; read if the packet is valid
    pha

    lda #%00000000 ; disable shift register output
    sta IO_1_PORTA

    lda #%11111111 ; PORT B is output
    sta IO_1_DDRB

    pla
    and #KB_VALID
    beq invalid_packet

    pla
    jsr handle_keycode
    jmp exit_irq

invalid_packet:
    pla ; get scancode from stack
    lda #$a4 ; write ¤ to signify an invalid packet was received
    jsr push_key
    jmp exit_irq

exit_irq:
    ply
    plx
    pla
    rti

; to test the VGA card with a static image, set a15 to 1

    org $a000

img: incbin "../vga_image_encode/fluffy.bin"


; === vector locations ===

    org $fffa
    word nmi
    word init
    word irq
