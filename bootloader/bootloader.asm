[org 0x7c00]
	xor ax, ax 
	mov ds, ax
	mov es, ax
	mov si, msg
	call print
	jpm $

print: 
	lodsb
	or al, al
	jz done 
	mov ah, 0x0e
	int 0x10
	jmp print
done: 
	ret
msg:
	db "Hello, Wolrd!", 0,
time 510-($-$$) db 0
dw 0xaa55
