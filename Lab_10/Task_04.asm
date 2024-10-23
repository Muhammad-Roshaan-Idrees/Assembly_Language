; program to display character entered by user using macro

display macro ch    
    mov dl, ch        
    mov ah, 2         
    int 21h           
endm

.model small
.stack 100h

.data 
    var1 db '?'       

.code


main proc 
    mov ax, @data    
    mov ds, ax
    
    mov ah, 1         
    int 21h          
    mov var1, al   

    display var1    

    mov ah, 4ch       
    int 21h    
main endp

end main          




https://github.com/Muhammad-Roshaan-Idrees/Assembly_Language.git