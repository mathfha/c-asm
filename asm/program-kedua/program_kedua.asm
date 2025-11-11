section .text
    global _start

_start: 
    mov edx, panjang
    mov ecx, pesan ; label pesan
    mov ebx, 1 ;stdout
    mov eax, 4 ;syswrite
    int 0x80

    mov edx, 15 
    mov ecx, bintang ; label dari oesan yaitu bintang
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov eax, 1
    int 0x80

section .data
    pesan db "kita tampilkan asterik 20 kali", 0xA
    panjang equ $ - pesan

    bintang times 15 db "*" ; konsep looping