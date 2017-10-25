section .bss
	siffer resb 4

section .text
global _start
_start:
	mov eax, 0
	mov ebx, 0
	call lokke

	lokke: ; ebx mindre enn 20, ebx stiger for hver iterasjon
	cmp ebx, 20
	je output
	cmp ebx, 10
	jb oek
	jnb min
	ret ; Lokke

	oek: ; oeker eax
	inc eax
	inc ebx
	call lokke
	ret

	min: ; minsker eax
	dec eax
	inc ebx
	call lokke
	ret

	output: ; skriver ut eax
	add eax, '0' ; konverterer tall til ascii
	mov [siffer],eax
        mov edx,1
	mov ecx,siffer
	mov ebx, 1 ; STDOUT
	mov eax, 4 ; sys_write
	int 80h

;END _start
