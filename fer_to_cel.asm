.model small
.stack 100h
.data
    F  dw 1000      ; Fahrenheit value
    C  dw ?         ; Resultant Celsius value
.code
    mov ax, @data
    mov ds, ax

    ; Load the Fahrenheit value into AX
    mov ax, F

    ; Subtract 32 from Fahrenheit
    sub ax, 32

    ; Multiply by 5
    mov bx, 5
    mul bx         ; AX = AX * BX (F - 32) * 5

    ; Divide the result by 9
    mov bx, 9
    div bx         ; AX = AX / BX ((F - 32) * 5 / 9)

    ; Add 1 to the result
    add ax, 1

    ; Store the result in C
    mov C, ax

    ; End the program
    mov ah, 4Ch
    int 21h
end
