; ============================================================================
; Persistência de iluminação pro Draxen DN202 (Sino Wealth SH68F90, fw 9.24)
; Guarda modo/cor/brilho/velocidade no setor de flash 0xD000 (nunca usado pelo
; firmware) e restaura no boot. Montado com sdas8051, colocado em 0x8300 (área
; livre 0x8292-0xAFFF do firmware).
;
; Hooks (aplicados por tools/patch_persist.py):
;   0x585C  main:  "clr a; mov r0,#0x5a; mov @r0,a"  -> "lcall boot_load; nop"
;   0x741F  "lcall 0x38b6" (handler de teclas/Fn)     -> "lcall hook_keys"
;   0x6D05  "lcall 0x4e01" (handler USB)              -> "lcall hook_usb"
; ============================================================================

        .area   CSEG (ABS)
        .org    0x8300

; --- variáveis do firmware (IRAM) ---
MODE    = 0x76          ; 0..10 efeitos, 0x10..0x13 modos game
COLOR   = 0x5a          ; 0..6
BRIGHT  = 0x7a          ; 0..4
SPEED   = 0x77          ; 0..4

; --- rotinas do firmware ---
FW_KEYS   = 0x38b6
FW_USB    = 0x4e01
FW_ERASE  = 0x7f93      ; r7 = página (high byte)
FW_PROG   = 0x7eca      ; r7 = página, r5 = offset, r3 = dado
FW_LEDOFF = 0x79d2      ; desliga driver de LED (brilho 0)

; --- nosso registro em flash ---
SECT    = 0xd0          ; página -> 0xD000
REC     = 0xd000        ; [A5][mode][color][bright][speed][chk]  chk = soma + 0x5A
MAGIC   = 0xa5

; --- sombra em XDATA (zerada no boot pelo firmware) ---
SH_MODE = 0x08f0
SH_FLAG = 0x08f4        ; 1 depois do boot_load

; ----------------------------------------------------------------------------
hook_keys:                          ; 0x8300
        lcall   FW_KEYS
        ljmp    check_save
hook_usb:                           ; 0x8306
        lcall   FW_USB
        ljmp    check_save

; ----------------------------------------------------------------------------
; boot_load: chamado do main no lugar de "clr a; mov r0,#0x5a; mov @r0,a"
; ----------------------------------------------------------------------------
boot_load:                          ; 0x830C
        clr     a
        mov     COLOR,a             ; semântica original
        mov     dptr,#REC
        clr     a
        movc    a,@a+dptr
        cjne    a,#MAGIC,far1
        sjmp    cont1
far1:   ljmp    nrec
cont1:  mov     dptr,#REC+1
        clr     a
        movc    a,@a+dptr
        mov     r2,a                ; mode
        mov     dptr,#REC+2
        clr     a
        movc    a,@a+dptr
        mov     r3,a                ; color
        mov     dptr,#REC+3
        clr     a
        movc    a,@a+dptr
        mov     r4,a                ; bright
        mov     dptr,#REC+4
        clr     a
        movc    a,@a+dptr
        mov     r5,a                ; speed
        mov     dptr,#REC+5
        clr     a
        movc    a,@a+dptr
        mov     r6,a                ; chk
        mov     a,r2
        add     a,r3
        add     a,r4
        add     a,r5
        add     a,#0x5a
        xrl     a,r6
        jnz     far2
        ; faixas válidas
        mov     a,r2
        clr     c
        subb    a,#0x14
        jnc     far2
        mov     a,r3
        clr     c
        subb    a,#7
        jnc     far2
        mov     a,r4
        clr     c
        subb    a,#5
        jnc     far2
        mov     a,r5
        clr     c
        subb    a,#5
        jnc     far2
        sjmp    apply
far2:   ljmp    nrec
apply:
        ; aplica
        mov     MODE,r2
        mov     COLOR,r3
        mov     BRIGHT,r4
        mov     SPEED,r5
        ; tabelas por modo (mesma init que o handler de Fn faz)
        mov     a,r2
        cjne    a,#1,t6
        lcall   init_m1
        sjmp    tdone
t6:     cjne    a,#6,t8
        lcall   init_m6
        sjmp    tdone
t8:     cjne    a,#8,tdone
        lcall   init_m8
tdone:
        ; brilho (4 = default do boot, nada a fazer)
        mov     a,BRIGHT
        cjne    a,#4,b3
        sjmp    nrec
b3:     cjne    a,#3,b2
        mov     r7,#0x80
        sjmp    bset
b2:     cjne    a,#2,b1
        mov     r7,#0xb4
        sjmp    bset
b1:     cjne    a,#1,b0
        mov     r7,#0xe6
        sjmp    bset
b0:     lcall   FW_LEDOFF
        sjmp    nrec
bset:   mov     dptr,#0xff95
        mov     a,#8
        movx    @dptr,a
        mov     dptr,#0xffb5
        mov     a,r7
        movx    @dptr,a
nrec:
        ; sombra = valores atuais; flag = 1
        mov     dptr,#SH_MODE
        mov     a,MODE
        movx    @dptr,a
        inc     dptr
        mov     a,COLOR
        movx    @dptr,a
        inc     dptr
        mov     a,BRIGHT
        movx    @dptr,a
        inc     dptr
        mov     a,SPEED
        movx    @dptr,a
        mov     dptr,#SH_FLAG
        mov     a,#1
        movx    @dptr,a
        ret

; ----------------------------------------------------------------------------
; check_save: se (mode,color,bright,speed) != sombra -> atualiza sombra e grava
; Preserva A, PSW, DPTR, R3, R5, R7 (do banco ativo).
; ----------------------------------------------------------------------------
check_save:
        push    acc
        push    psw
        push    dpl
        push    dph
        mov     a,r3
        push    acc
        mov     a,r5
        push    acc
        mov     a,r7
        push    acc
        mov     dptr,#SH_FLAG
        movx    a,@dptr
        jnz     cs1
fardone: ljmp   done
cs1:    mov     dptr,#SH_MODE
        movx    a,@dptr
        cjne    a,MODE,changed
        inc     dptr
        movx    a,@dptr
        cjne    a,COLOR,changed
        inc     dptr
        movx    a,@dptr
        cjne    a,BRIGHT,changed
        inc     dptr
        movx    a,@dptr
        cjne    a,SPEED,changed
        sjmp    fardone
changed:
        mov     a,MODE              ; modos transitórios (>= 0x14) não salvam
        clr     c
        subb    a,#0x14
        jnc     fardone
        mov     dptr,#SH_MODE
        mov     a,MODE
        movx    @dptr,a
        inc     dptr
        mov     a,COLOR
        movx    @dptr,a
        inc     dptr
        mov     a,BRIGHT
        movx    @dptr,a
        inc     dptr
        mov     a,SPEED
        movx    @dptr,a
        ; grava
        mov     r7,#SECT
        lcall   FW_ERASE
        mov     r3,#MAGIC
        mov     r5,#0
        mov     r7,#SECT
        lcall   FW_PROG
        mov     r3,MODE
        mov     r5,#1
        mov     r7,#SECT
        lcall   FW_PROG
        mov     r3,COLOR
        mov     r5,#2
        mov     r7,#SECT
        lcall   FW_PROG
        mov     r3,BRIGHT
        mov     r5,#3
        mov     r7,#SECT
        lcall   FW_PROG
        mov     r3,SPEED
        mov     r5,#4
        mov     r7,#SECT
        lcall   FW_PROG
        mov     a,MODE
        add     a,COLOR
        add     a,BRIGHT
        add     a,SPEED
        add     a,#0x5a
        mov     r3,a
        mov     r5,#5
        mov     r7,#SECT
        lcall   FW_PROG
done:
        pop     acc
        mov     r7,a
        pop     acc
        mov     r5,a
        pop     acc
        mov     r3,a
        pop     dph
        pop     dpl
        pop     psw
        pop     acc
        ret

; ----------------------------------------------------------------------------
; inits por modo (copiadas do handler de Fn, FUN_38b6)
; ----------------------------------------------------------------------------
init_m1:
        mov     0x5f,#0xff
        mov     0x60,#0xe0
        mov     0x61,#0xc4
        mov     0x62,#0xa8
        mov     0x63,#0x8c
        mov     0x64,#0x70
        mov     0x65,#0x54
        mov     0x66,#0x38
        mov     0x67,#0x1c
        mov     0x68,#0
        mov     0x1d,#0
        mov     0x1c,#0
        ret

init_m6:
        mov     0x5e,#0
        mov     0x1c,#0
        mov     0x75,#0
        mov     0x5f,#0xf2
        mov     0x60,#0xe7
        mov     0x61,#0xdc
        mov     0x62,#0xd1
        mov     0x63,#0xc6
        mov     0x64,#0xbb
        mov     0x65,#0xb0
        mov     0x66,#0xa5
        mov     0x67,#0x9a
        mov     0x68,#0x8f
        mov     0x69,#0x84
        mov     0x6a,#0x79
        mov     0x6b,#0x6e
        mov     0x6c,#0x63
        mov     0x6d,#0x58
        mov     0x6e,#0x4d
        mov     0x6f,#0x42
        mov     0x70,#0x37
        mov     0x71,#0x2c
        mov     0x72,#0x21
        mov     0x73,#0x16
        mov     0x74,#0x0b
        mov     0x0c,#0
        mov     0x0d,#0
        mov     0x0e,#0
        ret

; modo 8: cada tecla com uma cor fixa ciclando 7 cores (buffers XDATA 0x0000 / 0x0095 / 0x012A)
init_m8:
        mov     r2,#0
m8loop:
        mov     a,0x1c
        mov     b,#3
        mul     ab
        mov     r6,a
        mov     dptr,#m8tab
        mov     a,r6
        movc    a,@a+dptr
        mov     r7,a
        mov     a,r2
        mov     dpl,a
        mov     dph,#0
        mov     a,r7
        movx    @dptr,a
        mov     dptr,#m8tab+1
        mov     a,r6
        movc    a,@a+dptr
        mov     r7,a
        mov     a,r2
        add     a,#0x95
        mov     dpl,a
        clr     a
        addc    a,#0
        mov     dph,a
        mov     a,r7
        movx    @dptr,a
        mov     dptr,#m8tab+2
        mov     a,r6
        movc    a,@a+dptr
        mov     r7,a
        mov     a,r2
        add     a,#0x2a
        mov     dpl,a
        clr     a
        addc    a,#1
        mov     dph,a
        mov     a,r7
        movx    @dptr,a
        inc     0x1c
        mov     a,0x1c
        cjne    a,#7,m8n
        mov     0x1c,#0
m8n:    inc     r2
        cjne    r2,#0x8a,m8loop
        ret
m8tab:  .db 0xff,0xff,0x00, 0xff,0x00,0xff, 0x00,0xff,0xff, 0xff,0x00,0x00, 0x00,0xff,0x00, 0x00,0x00,0xff, 0x00,0x00,0x00
        .db 0xff            ; marcador de fim (só pra facilitar achar o blob)
