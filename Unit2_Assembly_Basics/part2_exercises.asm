; Base Author: Megan Avery Spring 2024
; Exercise Author: [YOUR NAME HERE]
; 
; Purpose - to learn about the following:
;	-  directives (dx, resx, & times)
;	- printing ints and characters
;	- dumping memory
;	- printing strings
;	- reading chars and ints

%include "asm_io.inc"

age equ 30              ; symbols
%define fav_number 24   ; macro


; initialized data
segment .data
; fav_color db "purple", 0
; fav_char db "A"
; num dd 83
hello db "Hello World!", 0
num_prompt db "Enter a number: ", 0
char_prompt db "Enter a character: ", 0
chars times 5 db "Z"

; uninitialized data
segment .bss
; fav_num resd 1
num resd 1
char resb 1

segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha

        ; mov dword [num], 116
	; mov eax, [num]      	; TODO: add code
        ; ;dump_regs 1

        ; call print_int
        ; call print_nl
        ; call print_char

        ; mov ah, [letter]
        ; call print_char

        ; mov eax, [num]
        ; call print_int
        ; call print_nl
        ; call print_char

        ; dump_mem 1, fav_color, 0

        ; mov eax, fav_color + 3
        ; call print_string

        ; mov eax, hello
        ; call print_string

        ; call print_nl
        ; dump_mem 1, hello, 0

        ; mov eax, num_prompt
        ; call print_string

        ; call read_int
        ; mov dword [fav_num], eax
        
        ; call print_nl
        ; call print_int

        ; mov eax, char_prompt
        ; call print_string
        ; call read_char
        ; mov byte [char], al

        ; mov eax, num_prompt
        ; call print_string
        ; call read_int
        ; mov dword [num], eax

        dump_mem 1, chars + 3, 0

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret


