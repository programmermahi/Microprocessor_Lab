
.model small
.stack 100h
.data
    n dw 50            ; Number of terms (n = 50)
    sum dw 0           ; Variable to store the sum

.code
    mov ax, @data
    mov ds, ax     
    mov ax, n         ; Load n (50) into AX
                      ; Multiply n by n (S_n = n^2)
    mul ax            ; ax = n * n

                      ; Store the result in sum
    mov sum, ax

                      ; End the program
    mov ah, 4Ch
    int 21h
end



