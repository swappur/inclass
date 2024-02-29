; Base Author: Megan Avery Spring 2024
; Exercise Author: [YOUR NAME HERE]

; Purpose - to learn the following:
; 	- logical shifts
;	- arithmetic shifts
;	- rotate shifts

%include "asm_io.inc"

; initialized data
segment .data

; uninitialized data
segment .bss


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha

        ; mov eax, 10
        ; shl eax, 3
        ; call print_int
        ; call print_nl

        ; mov eax, 080000045H
        ; call print_int
        ; call print_nl

        ; shl eax, 1
        ; call print_int
        ; call print_nl

        ; mov eax, 20
        ; mov ebx, 3
        ; shl eax, ebx
        ; call print_int
        
        ; mov eax, 23
        ; shr eax, 4
        ; call print_int

        mov eax, 0BAH
        mov ebx, 032H
        dump_regs 1
        OR eax, ebx
        dump_regs 2

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret


