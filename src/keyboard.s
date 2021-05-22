; kb flags
RELEASE = 0
EXTENDED = 1
SHIFT_LEFT = 2
SHIFT_RIGHT = 3
ALTGR = 4

; deadkeys
CIRCUMFLEX = 0
DIAERESIS = 1
TILDE = 2
GRAVE_ACCENT = 3

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

    bbs #EXTENDED, kb_flags, .releasing_extended_key

    cmp #$12
    beq .releasing_shift_left
    cmp #$59
    beq .releasing_shift_right

    rts ; return from handle_keycode

.releasing_extended_key
    rmb #EXTENDED, kb_flags

    cmp #$11 ; right alt (alt-gr)
    beq .releasing_alt_gr

    rts ; return from handle_keycode

.releasing_alt_gr
    rmb #ALTGR, kb_flags
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
    cmp #$e0              ; if the scan code is extended key
    beq .set_extended_flag ; set extended flag

    bbs #EXTENDED, kb_flags, .pressing_extended_key

    cmp #$12
    beq .pressing_shift_left
    cmp #$59
    beq .pressing_shift_right
    cmp #$54
    beq .pressing_circumflex
    cmp #$1e
    beq .pressing_tilde
    cmp #$3d
    beq .pressing_grave_accent

    jmp .pressing_printable_key

.set_release_flag:
    smb #RELEASE, kb_flags
    rts ; return from handle_keycode

.set_extended_flag:
    smb #EXTENDED, kb_flags
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

.pressing_tilde:
    bbr #ALTGR, kb_flags, .pressing_printable_key ; continue only if altgr is set

    smb #TILDE, kb_deadkey_flags

    lda #$7e ; ~ char
    jsr push_key
    lda #$11 ; DC1 mapped to left arrow
    jsr push_key

    rts ; return from handle_keycode

.pressing_grave_accent:
    bbr #ALTGR, kb_flags, .pressing_printable_key ; continue only if altgr is set

    smb #GRAVE_ACCENT, kb_deadkey_flags

    lda #$60 ; ` char
    jsr push_key
    lda #$11 ; DC1 mapped to left arrow
    jsr push_key

    rts ; return from handle_keycode

.pressing_extended_key:
    rmb #EXTENDED, kb_flags

    cmp #$11 ; right alt (alt-gr)
    beq .pressing_alt_gr

    rts ; return from handle_keycode

.pressing_alt_gr
    smb #ALTGR, kb_flags
    rts ; return from handle_keycode

.pressing_printable_key:
    tax

    bbs #ALTGR, kb_flags, .map_keycode_to_altgr_key
    bbs #SHIFT_LEFT, kb_flags, .map_keycode_to_shifted_key
    bbs #SHIFT_RIGHT, kb_flags, .map_keycode_to_shifted_key
    bbs #CIRCUMFLEX, kb_deadkey_flags, .map_keycode_to_circumflex_key
    bbs #DIAERESIS, kb_deadkey_flags, .map_keycode_to_diaeresis_key
    bbs #TILDE, kb_deadkey_flags, .map_keycode_to_tilde_key
    bbs #GRAVE_ACCENT, kb_deadkey_flags, .map_keycode_to_grave_accent_key

    lda keymap, x ; convert scancode to char
    jsr push_key

    rts ; return from handle_keycode

.map_keycode_to_altgr_key:
    stz kb_deadkey_flags ; no deadkeys work with altgr so we can just clear this instead of testing the flags
    ; TODO: handle shift+altgr

    lda keymap_altgr, x ; convert scancode to char with shift
    jsr push_key

    rts ; return from handle_keycode

.map_keycode_to_shifted_key:
    bbs #CIRCUMFLEX, kb_deadkey_flags, .map_keycode_to_shifted_circumflex_key
    bbs #DIAERESIS, kb_deadkey_flags, .map_keycode_to_shifted_diaeresis_key
    bbs #TILDE, kb_deadkey_flags, .map_keycode_to_shifted_tilde_key
    bbs #GRAVE_ACCENT, kb_deadkey_flags, .map_keycode_to_shifted_grave_accent_key


    lda keymap_shifted, x ; convert scancode to char with shift
    jsr push_key

    rts ; return from handle_keycode

; TODO: for dead keys, the combination not working should shift cursor right again and revert to non dead key mode (print original key without flag)

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

.map_keycode_to_tilde_key:
    rmb #TILDE, kb_deadkey_flags

    lda keymap_tilde, x ; convert scancode to char with shift
    jsr push_key

    rts ; return from handle_keycode

.map_keycode_to_grave_accent_key:
    rmb #GRAVE_ACCENT, kb_deadkey_flags

    lda keymap_grave_accent, x ; convert scancode to char with shift
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

.map_keycode_to_shifted_tilde_key:
    rmb #TILDE, kb_deadkey_flags

    lda keymap_tilde_shifted, x ; convert scancode to char with tilde + shift
    jsr push_key

    rts ; return from handle_keycode

.map_keycode_to_shifted_grave_accent_key:
    rmb #GRAVE_ACCENT, kb_deadkey_flags

    lda keymap_grave_accent_shifted, x ; convert scancode to char with grave accent + shift
    jsr push_key

    rts ; return from handle_keycode
