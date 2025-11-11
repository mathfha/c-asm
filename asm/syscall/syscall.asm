section .data
    pesan db "Masukkan angka: "
    panjangPesan equ $ - pesan

    outputPesan db "kamu memasukkan: "
    panjangOutputPesan equ $ - outputPesan

section .bss
    angka resb 5

section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, pesan
    mov edx, panjangPesan
    int 0x80

mov eax, 3
mov ebx, 0
mov ecx, angka
mov edx, 5
int 0x80

mov eax, 4
mov ebx, 1
mov ecx, outputPesan
mov edx, panjangOutputPesan
int 0x80

mov eax, 4
mov ebx, 1
mov ecx, angka
mov edx, 5
int 0x80

mov eax, 1
mov ebx, 0
int 0x80