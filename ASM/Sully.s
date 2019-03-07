section .data
c db "nasm64 -f macho64 -dREP Sully_%1$d.s ; gcc Sully_%1$d.o -o Sully_%1$d ; rm -rf Sully_%1$d.o",0
e db "./Sully_%d",0
p db "Sully_%d.s",0
s db "section .data%6$cc db %5$c%1$s%5$c,0%6$ce db %5$c%2$s%5$c,0%6$cp db %5$c%3$s%5$c,0%6$cs db %5$c%4$s%5$c,0%6$cw db %5$cw%5$c,0%6$csection .bss%6$cb:resb 128%6$csection .text%6$cextern _exit%6$cextern _fclose%6$cextern _fopen%6$cextern _fprintf%6$cextern _sprintf%6$cextern _system%6$cglobal _main%6$c_main:%6$cpush rbp%6$cmov rbp,rsp%6$cmov r15,%7$c%6$c%%ifdef REP%6$cdec r15%6$c%%endif%6$clea rdi,[rel b]%6$clea rsi,[rel p]%6$cmov rdx,r15%6$ccall _sprintf%6$clea rdi,[rel b]%6$clea rsi,[rel w]%6$ccall _fopen%6$cmov rbx,rax%6$cmov rdi,rbx%6$clea rsi,[rel s]%6$clea rdx,[rel c]%6$clea rcx,[rel e]%6$clea r8,[rel p]%6$clea r9,[rel s]%6$cpush 0%6$cadd r15,48%6$cpush r15%6$csub r15,48%6$cpush 10%6$cpush 34%6$ccall _fprintf%6$cmov rdi,rbx%6$ccall _fclose%6$clea rdi,[rel b]%6$clea rsi,[rel c]%6$cmov rdx,r15%6$ccall _sprintf%6$clea rdi,[rel b]%6$ccall _system%6$ccmp r15,0%6$cje .exit%6$clea rdi,[rel b]%6$clea rsi,[rel e]%6$cmov rdx,r15%6$ccall _sprintf%6$clea rdi,[rel b]%6$ccall _system%6$c.exit:%6$ccall _exit%6$c",0
w db "w",0
section .bss
b:resb 128
section .text
extern _exit
extern _fclose
extern _fopen
extern _fprintf
extern _sprintf
extern _system
global _main
_main:
push rbp
mov rbp,rsp
mov r15,5
%ifdef REP
dec r15
%endif
lea rdi,[rel b]
lea rsi,[rel p]
mov rdx,r15
call _sprintf
lea rdi,[rel b]
lea rsi,[rel w]
call _fopen
mov rbx,rax
mov rdi,rbx
lea rsi,[rel s]
lea rdx,[rel c]
lea rcx,[rel e]
lea r8,[rel p]
lea r9,[rel s]
push 0
add r15,48
push r15
sub r15,48
push 10
push 34
call _fprintf
mov rdi,rbx
call _fclose
lea rdi,[rel b]
lea rsi,[rel c]
mov rdx,r15
call _sprintf
lea rdi,[rel b]
call _system
cmp r15,0
je .exit
lea rdi,[rel b]
lea rsi,[rel e]
mov rdx,r15
call _sprintf
lea rdi,[rel b]
call _system
.exit:
call _exit
