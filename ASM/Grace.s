%define S "%%define S %1$c%3$s%1$c,0%2$c%%define P %1$c%4$s%1$c,0%2$c%%macro M 0%2$csection .data%2$cr db %1$cw%1$c%2$cp db P%2$cs db S%2$csection .text%2$cextern _exit%2$cextern _fclose%2$cextern _fopen%2$cextern _fprintf%2$cglobal _main%2$c_main:%2$cpush rbp%2$cmov rbp,rsp%2$clea rdi,[rel p]%2$clea rsi,[rel r]%2$ccall _fopen%2$ccmp rax,0%2$cjz .exit%2$cmov rbx,rax%2$cmov rdi,rbx%2$clea rsi,[rel s]%2$cmov rdx,34%2$cmov rcx,10%2$cmov r8,rsi%2$clea r9,[rel p]%2$ccall _fprintf%2$cmov rdi,rbx%2$ccall _fclose%2$c.exit:%2$ccall _exit%2$c%%endmacro%2$c;Start of main%2$cM%2$c",0
%define P "Grace_kid.s",0
%macro M 0
section .data
r db "w"
p db P
s db S
section .text
extern _exit
extern _fclose
extern _fopen
extern _fprintf
global _main
_main:
push rbp
mov rbp,rsp
lea rdi,[rel p]
lea rsi,[rel r]
call _fopen
cmp rax,0
jz .exit
mov rbx,rax
mov rdi,rbx
lea rsi,[rel s]
mov rdx,34
mov rcx,10
mov r8,rsi
lea r9,[rel p]
call _fprintf
mov rdi,rbx
call _fclose
.exit:
call _exit
%endmacro
;Start of main
M
