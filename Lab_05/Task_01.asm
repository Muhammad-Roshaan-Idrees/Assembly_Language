;Program to reverse a string 

.model small
.stack 100h
.data
    arr DB "hello"
    
.code
   main proc

     mov ax, @data
     mov ds, ax

     mov si, offset arr

     mov cx, 5

 stackPush: 

     mov bx, [si] 
     push bx
     inc si  
     loop stackPush
         
  mov cx, 5

  stackPop: 

     pop dx
     mov ah, 02h
     int 21h   
     loop stackPop    

     mov ah, 4ch
     int 21h    
    
     main endp
end main