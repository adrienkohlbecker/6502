vga_loop:
  ; initialize vidpage to beginning of video ram $2000
  lda #$20
  sta vidpage + 1
  lda #$00
  sta vidpage

  ldx #$26 ; X will count down how many pages of video RAM to go
  ldy #$0 ; populate a page starting at 0
  inc start_color
  lda start_color ; color of pixel

.page:
  sta (vidpage), y ; write A register to address vidpage + y

  and #$7f ; if we cycled through 127 colors
  bne .inc_color
  clc
  adc #$1 ; increment twice

.inc_color:
  clc
  adc #$1 ; otherwise, increment pixel color value just once

  iny
  bne .page

  inc vidpage + 1 ; skip to the next page
  dex
  bne .page ; keep going through $20 pages

  rts
