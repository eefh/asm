mov ah, 0x0e
mov al, 65
loop:
    int 0x10
    add al, 32
    int 0x10
    cmp al, 'z'
    je exit
    sub al, 32
    inc al
    jmp loop
exit:
    jmp $
times 510-($-$$) db 0
db 0x55, 0xaa