; 
; Base Author:  Megan Avery Spring 2024
; Exercise Author: [YOUR NAME HERE]
; 
; Purpose - to learn about the following:
; 	- comments
;	- dumping registers
;	- printing empty lines
;	- instructions: mov, add, sub, inc/dec

%include "asm_io.inc"

; initialized data
segment .data
num dd 4

; uninitialized data
segment .bss
numTwo resd 1

segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha

        mov eax, [num]
        call print_int

	; dump_regs 1               ; TODO: add code
        ; call print_nl

        ; mov eax, 0              ; Making EAX = 0
        ; mov ah, 18              ; AH = 18 (base 10)
        ; mov al, 0BAH            ; AL = 0xBA (base 16)
        ; dump_regs 2

        ; mov eax, 0BEEFCAFEH
        ; dump_regs 3
        ; call print_nl

        ; mov eax, 3
        ; mov ebx, 4
        ; add eax, ebx
        ; dump_regs 1

        ; mov eax, 40
        ; dump_regs 1
        ; mov ebx, 2
        ; dump_regs 2
        ; add eax, ebx
        ; dump_regs 3

        ; mov eax, 10
        ; mov ebx, 4
        ; sub eax, ebx
        ; dump_regs 1

        ; dump_regs 1
        ; mov eax, 255
        ; dump_regs 2
        ; sub eax, 16
        ; dump_regs 3
        
        ; call print_nl

        ; mov ecx, eax
        ; inc ecx
        ; dump_regs 2

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret


