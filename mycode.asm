

org 100h

JMP START       

MSG:    DB      "Hello, World!",0Dh,0Ah,'$'

START:  

MOV     dx, MSG  
MOV     ah, 09h  
INT     21h 
JMP INCREMENT 
          
        
INCREMENT:
MOV AX,5
DEC AX 
JZ EXIT
JMP FIVE 
       
FIVE:
     MOV BX,AX
     CMP BX,0
     JNZ START
     
               
EXIT:
ENDP  
endp