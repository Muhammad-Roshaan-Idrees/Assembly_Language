; program to swap two numbers using stack 

.model small
.stack 100h
.data
    num1 DW 5        ; First number
    num2 DW 10       ; Second number
    newline DB 0Dh, 0Ah, '$'  ; Newline for output

.code
main proc
    mov ax, @data    ; Initialize data segment
    mov ds, ax

    ; Push num1 and num2 onto the stack
    mov ax, num1     ; Move num1 into AX
    push ax          ; Push num1 to stack
    mov ax, num2     ; Move num2 into AX
    push ax          ; Push num2 to stack

    ; Pop to swap values
    pop ax           ; Pop num2 into AX
    mov num1, ax     ; Store it in num1
    pop ax           ; Pop num1 into AX
    mov num2, ax     ; Store it in num2

    ; Exit program
    mov ah, 4Ch
    int 21h
main endp
end main
