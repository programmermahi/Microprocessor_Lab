
.model small
.stack 100h
.data
    sum dw 0           ; Variable to store the sum
    odd_number dw 1     ; Start with the first odd number (1)
    limit dw 99         ; Limit (99)

.code
    mov ax, @data
    mov ds, ax

    mov ax, 0          ; Initialize sum to 0
    mov bx, odd_number ; Start with the first odd number (1)

loop_start:
    add ax, bx         ; Add the odd number to the sum (sum += odd_number)
    add bx, 2          ; Increment odd number by 2 to get the next odd number
    cmp bx, limit      ; Compare odd number with the limit (99)
    jg loop_end        ; If odd_number > 99, exit the loop
    jmp loop_start     ; Repeat the loop

loop_end:
    ; Store the result in sum
    mov sum, ax

    ; End the program
    mov ah, 4Ch
    int 21h
end
