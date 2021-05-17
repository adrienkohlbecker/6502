push_key:
    ldx kb_wptr    ; write scancode in the buffer at offset kb_wptr
    sta kb_buffer, x
    inc kb_wptr    ; increment pointer
    rts

handle_keycode
    cmp #$aa              ; if the scan code is  BAT (Basic Assurance Test) OK  https://www.win.tue.nl/~aeb/linux/kbd/scancodes-1.html#ss1.2
    beq .ignore_keycode    ; ignore it

    pha

    lda kb_flags
    and #RELEASE ; if releasing a key
    bne .releasing_key

    jmp .pressing_key

.ignore_keycode:
    rts

.releasing_key:
    lda kb_flags
    eor #RELEASE  ; reset the releasing bit
    sta kb_flags

    pla ; get scancode from stack

    cmp #$12
    beq .releasing_shift_left
    cmp #$59
    beq .releasing_shift_right

    rts ; return from handle_keycode

.releasing_shift_left:
    lda kb_flags
    eor #SHIFT_LEFT ; flip the shift bit
    sta kb_flags

    rts ; return from handle_keycode

.releasing_shift_right:
    lda kb_flags
    eor #SHIFT_RIGHT ; flip the shift bit
    sta kb_flags

    rts ; return from handle_keycode

.pressing_key:
    pla ; get scancode from stack

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
    lda kb_flags
    ora #RELEASE
    sta kb_flags

    rts ; return from handle_keycode

.pressing_shift_left:
    lda kb_flags
    ora #SHIFT_LEFT
    sta kb_flags

    rts ; return from handle_keycode

.pressing_shift_right:
    lda kb_flags
    ora #SHIFT_RIGHT
    sta kb_flags

    rts ; return from handle_keycode

.pressing_circumflex:
    lda kb_flags
    and #SHIFT_LEFT
    bne .pressing_diaeresis

    lda kb_flags
    and #SHIFT_RIGHT
    bne .pressing_diaeresis

    lda kb_flags
    ora #CIRCUMFLEX
    sta kb_flags

    lda #$5e ; ^ char
    jsr push_key
    lda #$11 ; DC1 mapped to left arrow
    jsr push_key

    rts ; return from handle_keycode

.pressing_diaeresis:
    lda kb_flags
    ora #DIAERESIS
    sta kb_flags

    lda #$a8 ; ¨ char
    jsr push_key
    lda #$11 ; DC1 mapped to left arrow
    jsr push_key

    rts ; return from handle_keycode

.pressing_printable_key:
    tax
    lda kb_flags
    and #SHIFT_LEFT
    bne .map_keycode_to_shifted_key

    lda kb_flags
    and #SHIFT_RIGHT
    bne .map_keycode_to_shifted_key

    lda kb_flags
    and #CIRCUMFLEX
    bne .map_keycode_to_circumflex_key

    lda kb_flags
    and #DIAERESIS
    bne .map_keycode_to_diaeresis_key

    lda keymap, x ; convert scancode to char
    jsr push_key

    rts ; return from handle_keycode

.map_keycode_to_shifted_key:
    lda kb_flags
    and #CIRCUMFLEX
    bne .map_keycode_to_shifted_circumflex_key

    lda kb_flags
    and #DIAERESIS
    bne .map_keycode_to_shifted_diaeresis_key

    lda keymap_shifted, x ; convert scancode to char with shift
    jsr push_key

    rts ; return from handle_keycode

.map_keycode_to_diaeresis_key:
    lda kb_flags
    eor #DIAERESIS ; flip the diaeresis bit
    sta kb_flags

    lda keymap_diaeresis, x ; convert scancode to char with shift
    jsr push_key

    rts ; return from handle_keycode

.map_keycode_to_circumflex_key:
    lda kb_flags
    eor #CIRCUMFLEX ; flip the circumflex bit
    sta kb_flags

    lda keymap_circumflex, x ; convert scancode to char with shift
    jsr push_key

    rts ; return from handle_keycode

.map_keycode_to_shifted_diaeresis_key:
    lda kb_flags
    eor #DIAERESIS ; flip the diaeresis bit
    sta kb_flags

    lda keymap_diaeresis_shifted, x ; convert scancode to char with diaeresis + shift
    jsr push_key

    rts ; return from handle_keycode

.map_keycode_to_shifted_circumflex_key:
    lda kb_flags
    eor #CIRCUMFLEX ; flip the circumflex bit
    sta kb_flags

    lda keymap_circumflex_shifted, x ; convert scancode to char with circumflex + shift
    jsr push_key

    rts ; return from handle_keycode
