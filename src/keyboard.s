; kb flags
RELEASE = 0
SHIFT_LEFT = 2
SHIFT_RIGHT = 3
ALTGR = 4

; deadkeys
CIRCUMFLEX = 0
DIAERESIS = 1

push_key:
    ldx kb_wptr    ; write scancode in the buffer at offset kb_wptr
    sta kb_buffer, x
    inc kb_wptr    ; increment pointer
    rts

handle_keycode
    cmp #$aa              ; if the scan code is  BAT (Basic Assurance Test) OK  https://www.win.tue.nl/~aeb/linux/kbd/scancodes-1.html#ss1.2
    beq .ignore_keycode    ; ignore it

    bbs RELEASE, kb_flags, .releasing_key ; if releasing a key
    jmp .pressing_key

.ignore_keycode:
    rts

.releasing_key:
    rmb #RELEASE, kb_flags

    cmp #$12
    beq .releasing_shift_left
    cmp #$59
    beq .releasing_shift_right

    rts ; return from handle_keycode

.releasing_shift_left:
    rmb #SHIFT_LEFT, kb_flags
    rts ; return from handle_keycode

.releasing_shift_right:
    rmb #SHIFT_RIGHT, kb_flags
    rts ; return from handle_keycode

.pressing_key:
    cmp #$f0              ; if the scan code is key release
    beq .set_release_flag ; set release flag

    cmp #$12
    beq .pressing_shift_left
    cmp #$59
    beq .pressing_shift_right
    cmp #$54
    beq .pressing_circumflex

    jmp .pressing_printable_key

.set_release_flag:
    smb #RELEASE, kb_flags
    rts ; return from handle_keycode

.pressing_shift_left:
    smb #SHIFT_LEFT, kb_flags
    rts ; return from handle_keycode

.pressing_shift_right:
    smb #SHIFT_RIGHT, kb_flags
    rts ; return from handle_keycode

.pressing_circumflex:
    bbs #SHIFT_LEFT,  kb_flags, .pressing_diaeresis
    bbs #SHIFT_RIGHT, kb_flags, .pressing_diaeresis

    smb #CIRCUMFLEX, kb_deadkey_flags

    lda #$5e ; ^ char
    jsr push_key
    lda #$11 ; DC1 mapped to left arrow
    jsr push_key

    rts ; return from handle_keycode

.pressing_diaeresis:
    smb #DIAERESIS, kb_deadkey_flags

    lda #$a8 ; ¨ char
    jsr push_key
    lda #$11 ; DC1 mapped to left arrow
    jsr push_key

    rts ; return from handle_keycode

.pressing_printable_key:
    pha
    jsr binhex
    jsr print_char
    txa
    jsr print_char
    pla

    tax

    bbs #SHIFT_LEFT, kb_flags, .map_keycode_to_shifted_key
    bbs #SHIFT_RIGHT, kb_flags, .map_keycode_to_shifted_key
    bbs #CIRCUMFLEX, kb_deadkey_flags, .map_keycode_to_circumflex_key
    bbs #DIAERESIS, kb_deadkey_flags, .map_keycode_to_diaeresis_key

    lda keymap, x ; convert scancode to char
    jsr push_key

    rts ; return from handle_keycode

.map_keycode_to_shifted_key:
    bbs #CIRCUMFLEX, kb_deadkey_flags, .map_keycode_to_shifted_circumflex_key
    bbs #DIAERESIS, kb_deadkey_flags, .map_keycode_to_shifted_diaeresis_key

    lda keymap_shifted, x ; convert scancode to char with shift
    jsr push_key

    rts ; return from handle_keycode

.map_keycode_to_diaeresis_key:
    rmb #DIAERESIS, kb_deadkey_flags

    lda keymap_diaeresis, x ; convert scancode to char with shift
    jsr push_key

    rts ; return from handle_keycode

.map_keycode_to_circumflex_key:
    rmb #CIRCUMFLEX, kb_deadkey_flags

    lda keymap_circumflex, x ; convert scancode to char with shift
    jsr push_key

    rts ; return from handle_keycode

.map_keycode_to_shifted_diaeresis_key:
    rmb #DIAERESIS, kb_deadkey_flags

    lda keymap_diaeresis_shifted, x ; convert scancode to char with diaeresis + shift
    jsr push_key

    rts ; return from handle_keycode

.map_keycode_to_shifted_circumflex_key:
    rmb #CIRCUMFLEX, kb_deadkey_flags

    lda keymap_circumflex_shifted, x ; convert scancode to char with circumflex + shift
    jsr push_key

    rts ; return from handle_keycode
