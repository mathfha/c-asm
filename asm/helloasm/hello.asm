section .data
    pesan db "halo adit", 0xA
    len equ $ - pesan

section .text
    global _start

_start:
    mov edx, len
    mov ecx, pesan
    mov ebx, 1
    mov eax, 4 ; system write untuk mencetak string
    int 0x80

    mov eax, 1 ; system call untuk exit
    int 0x80