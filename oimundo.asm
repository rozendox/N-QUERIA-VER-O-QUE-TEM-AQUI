;rozendox

global _start

section . data
	msg db "Hello, world, Rox", 0x0a
	len equ $ - msg

section .text
_start:
	
	mov eax, 4  	; sts_write system call
	mov ebx,1 		; stdout file descriptor
	mov ecx, msg	; bytes to write
	mov edx, len	; number of bytes do write
	int 0x80		; peform system call
	mov eax, 1		; sys_exit system call
	mov ebx, 0 		; exit status is 0
	int 0x80
