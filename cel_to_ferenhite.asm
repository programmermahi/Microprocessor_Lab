.model small
.stack 100h
.data
    C  dw 260      ; Celsius value
    F  dw ?        ; Resultant Fahrenheit value
.code
    mov ax, @data
    mov ds, ax

    ; Load the Celsius value into AX
    mov ax, C

    ; Multiply Celsius by 9
    mov bx, 9
    mul bx         ; AX = AX * BX (C * 9)

    ; Divide the result by 5
    mov bx, 5
    div bx         ; AX = AX / BX ((C * 9) / 5)

    ; Add 32 to the result
    add ax, 32

    ; Subtract 1 from the result
    sub ax, 1

    ; Store the result in F
    mov F, ax

    ; End the program
    mov ah, 4Ch
    int 21h
end
