;Positional arguments FTW
section .data
s db ";Positional arguments FTW%2$csection .data%2$cs db %1$c%3$s%1$c,0%2$csection .text%2$cextern _exit%2$cextern _printf%2$cglobal _main%2$c_lol:%2$cret%2$c_main:%2$cpush rbp%2$cmov rbp,rsp%2$clea rdi,[rel s]%2$cmov rsi,34%2$cmov rdx,10%2$clea rcx,[rel s]%2$ccall _printf;MAGIC%2$ccall _lol%2$ccall _exit%2$c",0
section .text
extern _exit
extern _printf
global _main
_lol:
ret
_main:
push rbp
mov rbp,rsp
lea rdi,[rel s]
mov rsi,34
mov rdx,10
lea rcx,[rel s]
call _printf;MAGIC
call _lol
call _exit
