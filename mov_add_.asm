.model small
.stack 100h
.code

main proc
    ; Part 1: Move 100H into BX
    mov bx, 100h       ; Move the value 100H into BX register
    mov ax, bx         ; Move the contents of BX into AX register

    ; Part 2: Add 10H to AX
    add ax, 10h        ; Add the value 10H to the contents of AX

    ; Exit program
    exit:
    mov ah, 4ch        ; Set AH to 4Ch for function 4Ch (terminate program) of INT 21h
    int 21h            ; DOS interrupt to exit the program

main endp
end main




