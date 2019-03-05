;God bless loops
section .data
s db ";God bless loops%csection .data%cs db %c%s%c,0%csection .text%cextern _exit%cextern _printf%cglobal _main%c_main:%cpush rbp%cmov rbp,rsp%clea rdi,[rel s]%cmov rsi,10%cmov rdx,10%cmov rcx,34%clea r8,[rel s]%cmov r9,34%cmov r15,22%c.loop:%cpush 10%cdec r15%cjnz .loop%ccall _printf%ccall _exit%c",0
section .text
extern _exit
extern _printf
global _main
_main:
push rbp
mov rbp,rsp
lea rdi,[rel s]
mov rsi,10
mov rdx,10
mov rcx,34
lea r8,[rel s]
mov r9,34
mov r15,22
.loop:
push 10
dec r15
jnz .loop
call _printf
call _exit
