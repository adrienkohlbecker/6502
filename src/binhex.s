;================================================================================
;
;binhex: CONVERT BINARY BYTE TO HEX ASCII CHARS
;
;   ————————————————————————————————————
;   Preparatory Ops: .A: byte to convert
;
;   Returned Values: .A: MSN ASCII char
;                    .X: LSN ASCII char
;                    .Y: entry value
;   ————————————————————————————————————
;
binhex   pha                   ;save byte
         and #%00001111        ;extract LSN
         tax                   ;save it
         pla                   ;recover byte
         lsr                   ;extract...
         lsr                   ;MSN
         lsr
         lsr
         pha                   ;save MSN
         txa                   ;LSN
         jsr .0000010          ;generate ASCII LSN
         tax                   ;save
         pla                   ;get MSN & fall thru
;
;
;   convert nybble to hex ASCII equivalent...
;
.0000010 cmp #$0a
         bcc .0000020          ;in decimal range
;
         adc #$66              ;hex compensate
;
.0000020 eor #%00110000        ;finalize nybble
         rts                   ;done
