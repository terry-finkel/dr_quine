%define S "%%define S %c%s%c,0%c%%define P %cGrace_kid.s%c,0%c%%macro M 0%csection .data%cr db %cw%c%cp db P%cs db S%csection .text%cextern _exit%cextern _fopen%cextern _fprintf%cglobal _main%c_main:%cpush rbp%cmov rsp,rbp%clea rdi,[rel p]%clea rsi,[rel r]%ccall _fopen%cmov rdi,rax%clea rsi,[rel s]%cmov rdx,34%clea rcx,[rel s]%cmov r8,34%cmov r9,10%cmov r15,40%c.loop: ;OH YEAH%cpush 10%cdec r15%cjnz .loop%cadd dword[rsp],24%cadd dword[rsp+8],24%cadd dword[rsp+40],24%cadd dword[rsp+48],24%ccall _fprintf%ccall _exit%c%%endmacro%cM%c",0
%define P "Grace_kid.s",0
%macro M 0
section .data
r db "w"
p db P
s db S
section .text
extern _exit
extern _fopen
extern _fprintf
global _main
_main:
push rbp
mov rsp,rbp
lea rdi,[rel p]
lea rsi,[rel r]
call _fopen
mov rdi,rax
lea rsi,[rel s]
mov rdx,34
lea rcx,[rel s]
mov r8,34
mov r9,10
mov r15,40
.loop: ;OH YEAH
push 10
dec r15
jnz .loop
add dword[rsp],24
add dword[rsp+8],24
add dword[rsp+40],24
add dword[rsp+48],24
call _fprintf
call _exit
%endmacro
M
