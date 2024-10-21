; program to initialize array of integers and find the largest numbers in the array using stack

.model small
.stack 100h
.data
    arr DW 12,3,5,9,7,8,6          ; Array of integers
    arrSize DW 7                   ; Number of elements in the array
    largest DW ?                   ; To store the largest number

.code
main proc
    mov ax, @data         
    mov ds, ax

    mov si, 0              ; SI will index the array
    mov ax, arr[si]      ; Load the first element
    mov largest, ax        ; Assume it's the largest

    ; Loop through the array  
    
    mov cx, arrSize      ; Set loop counter
next:
    mov ax, arr[si]        ; Load the current element
    cmp ax, largest        ; Compare with the largest
    jle jump               ; If current element is smaller, skip
    mov largest, ax        ; Update largest if found

jump:
    add si, 2              ; Move to the next element
    loop next              ; Repeat until all elements are checked

    ; Exit the program
    mov ah, 4Ch
    int 21h   
    
main endp
end main
