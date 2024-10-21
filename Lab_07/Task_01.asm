; program to initialize string variable and implement stack to reverse string

.model small
.stack 100h
.data
    origString DB 'HELLO$', 0     ; Original string (null-terminated for DOS)
    revString DB 6 DUP('$')       ; Placeholder for reversed string

.code
main proc
    mov ax, @data         
    mov ds, ax

    ; Display orig string   
    
    mov ah, 09h
    lea dx, origString
    int 21h

    ; Rev string using stack
    
    lea si, origString           ; Load orig string
    lea di, revString            ; Load rev string address
    mov cx, 5                    ; Length of the string ('HELLO' has 5 chars)

rev:
    push ptr [si]                ; Push each character onto the stack
    inc si
    loop rev

    mov cx, 5                    ; Reset counter for popping

pop_loop:
    pop ptr [di]                 ; Pop each character from the stack
    inc di
    loop pop_loop

    ; Display rev string 
    
    mov ah, 09h
    lea dx, revString
    int 21h

    ; Exit program
    
    mov ah, 4Ch
    int 21h  
    
main endp
end main


