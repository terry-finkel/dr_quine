#include<fcntl.h>
#include<stdio.h>
#include<stdlib.h>
int k=-1;
int main(void){
if(k<0)return -1;
#ifdef REP
k-=1;
#endif
char buff[99];
sprintf(buff,"Sully_%d.c",k);
FILE *f=fopen(buff,"w");
if(!f)return -1;
const char *s="#include<fcntl.h>%1$c#include<stdio.h>%1$c#include<stdlib.h>%1$cint k=%4$d;%1$cint main(void){%1$cif(k<0)return -1;%1$c#ifdef REP%1$ck-=1;%1$c#endif%1$cchar buff[99];%1$csprintf(buff,%2$cSully_%%d.c%2$c,k);%1$cFILE *f=fopen(buff,%2$cw%2$c);%1$cif(!f)return -1;%1$cconst char *s=%2$c%3$s%2$c;%1$cfprintf(f,s,10,34,s,k);%1$cfclose(f);%1$csprintf(buff,%2$cgcc -Wall -Wextra -Werror -DREP Sully_%%d.c -o Sully_%%d%2$c,k,k);%1$csystem(buff);%1$cif(k!=0){sprintf(buff,%2$c./Sully_%%d%2$c,k);system(buff);}%1$c}%1$c";
fprintf(f,s,10,34,s,k);
fclose(f);
sprintf(buff,"gcc -Wall -Wextra -Werror -DREP Sully_%d.c -o Sully_%d",k,k);
system(buff);
if(k!=0){sprintf(buff,"./Sully_%d",k);system(buff);}
}
