
org 100h

.DATA

.CODE
MAIN PROC
    MOV AH,1
    INT 21h
    
    CMP AH,0
    JL NEGATIVE
    JE ZERO
    JG POSITIVE
MAIN ENDP

NEGATIVE:
    MOV DL,'NEGATIVE'
    INT 21h
ZERO:
    MOV DL,'ZERO'
    INT 21h
POSITIVE:
    MOV DL,'POSITIVE'
    INT 21h
    


ret




