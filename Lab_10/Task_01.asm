; program to display Hello World in different lines using macro

display macro var1, var2
    push ax
    push dx

    mov ah, 9
    lea dx, var1
    int 21h              
    
    call newline         
    
    mov ah, 9
    lea dx, var2
    int 21h              

    pop dx
    pop ax

endm

.model small
.stack 100h
.data
var1 db 'Hello$' 
var2 db 'World$'

.code
main proc
    mov ax,@data
    mov ds,ax

    display var1, var2    

    mov ah, 4ch           
    int 21h
    
main endp

newline proc
    mov ah, 2
    mov dl, 13           
    int 21h
    mov dl, 10            
    int 21h
    
    ret
newline endp

end main



https://github.com/Muhammad-Roshaan-Idrees/Assembly_Language.git