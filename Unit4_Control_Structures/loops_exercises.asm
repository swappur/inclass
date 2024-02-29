; Base Author: Megan Avery Spring 2024
; Exercise Author: [YOUR NAME HERE]
;
; Purpose - to learn about loops in NASM

%include "asm_io.inc"
segment .data						; initialized data
rocket db "Rocket!", 0
perfect db "PERFECT", 0
enter_number db "Enter a number: ", 0
another_prompt db "Again! ", 0
goat db "Fear the Goat!", 0
enter_reaction db "Enter your reaction: ", 0
abc db "ABC", 0

segment .bss						; uninitialized data


segment .text						; code
        global  asm_main
asm_main:
        enter   0,0               	; setup routine
        pusha

		; TODO: FOR EXERCISE
;         mov ecx, 5

; for:
;         mov eax, ecx
;         call print_int
;         call print_nl
;         loop for
; endfor:
;         call print_nl
;         mov eax, rocket
;         call print_string
		; TODO: WHILE EXERCISE
;         mov eax, enter_number
;         call print_string
;         call read_int
; while:
;         mov ebx, eax
;         dec ebx
;         and eax, ebx
;         jne endwhile
;         mov eax, perfect
;         call print_string
;         call print_nl
;         mov eax, another_prompt
;         call print_string
;         call read_int
;         jmp while
; endwhile:

        

		; TODO: DO WHILE EXERCISE
; do:
;         mov eax, goat
;         call print_string
;         call print_nl
;         mov eax, enter_reaction
;         call print_string
;         call read_char
;         cmp eax, "!"
;         call read_char
;         jne do
; doend:

        mov eax, abc
        call print_string
        call print_nl
        call print_nl
        mov ecx, 3
for:
        mov eax, ecx
        call print_int
        call print_nl
        call print_nl
        loop for

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret
