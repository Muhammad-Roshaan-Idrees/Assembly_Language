.model small
.stack 100h
.data    

arr db 4,1,3,5,6,7

.code
     main proc
         
         mov ax, @data
         mov ds, ax
         
         lea Si, arr;
         mov cx,6
         mov dl,[Si] 
         add dl, 48 
         mov ah,2
         int 21h
         
         inc Si
         
         mov dl,[Si] 
         add dl, 48 
         mov ah,2
         int 21h  
         
         inc Si
         
         mov dl,[Si] 
         add dl, 48 
         mov ah,2
         int 21h
         
         inc Si
         
         mov dl,[Si] 
         add dl, 48 
         mov ah,2
         int 21h 
         
         inc Si
         
         mov dl,[Si] 
         add dl, 48 
         mov ah,2
         int 21h
         
         inc Si
         
         mov dl,[Si] 
         add dl, 48 
         mov ah,2
         int 21h 
         
         mov ah,4ch
         int 21h
         
         main endp
    end main                          1......