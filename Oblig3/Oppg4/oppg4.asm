section .bss           ;Uninitialized data
	num respb 4

section .text
global _start
_start:
	mov eax, 2
	add eax, '0'; konverterer tall til ascii
	mov [num], eax
	; mov ebx, 0
	; Lokke: ; a mindre enn 20, a stiger for hver iterasjon
	; cmp eax lt 20
	; add eax,1
	; je Lokke
	;ret ; lokke

	; Output eax
        mov edx,1
	mov ecx,eax
	mov ebx, 1 ; STDOUT
	mov eax, 4 ; sys_write
	int 80h
; END _start
