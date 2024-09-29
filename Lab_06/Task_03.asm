.model small
.stack 100h

.data
    arr dw 10,17,15,18
    msg db 'The Sum of Array is = $'

.code
main proc
    mov ax, @data
    mov ds, ax

    mov ah, 09h
    lea dx, msg
    int 21h

    mov ax, 0
    lea si, arr
    mov cx, 4

sum:
    add ax, [si]
    add si, 2
    loop sum

    call printNum

    mov ah, 4Ch
    int 21h
main endp

printNum proc
    mov bx, 10

    xor cx, cx

convert:
    xor dx, dx
    div bx
    push dx
    inc cx
    test ax, ax
    jnz convert

print_digits:
    pop dx
    add dl, '0'
    mov ah, 02h
    int 21h
    loop print_digits
    ret
printNum endp

end main