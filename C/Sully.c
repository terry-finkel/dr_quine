#include<fcntl.h>
#include<stdio.h>
#include<stdlib.h>
int k=5;
int main(void) {
#ifdef REP
k-=1;
#endif
char buff[99];
sprintf(buff,"Sully_%d.c",k);
FILE *f=fopen(buff,"w");
const char *s="#include<fcntl.h>%c#include<stdio.h>%c#include<stdlib.h>%cint k=%d;%cint main(void) {%c#ifdef REP%ck-=1;%c#endif%cchar buff[99];%csprintf(buff,%cSully_%%d.c%c,k);%cFILE *f=fopen(buff,%cw%c);%cconst char *s=%c%s%c;%cfprintf(f,s,10,10,10,k,10,10,10,10,10,10,34,34,10,34,34,10,34,s,34,10,10,10,34,34,10,10,34,34,10,10);%cfclose(f);%csprintf(buff,%cgcc -Wall -Wextra -Werror -DREP Sully_%%d.c -o Sully_%%d%c,k,k);%csystem(buff);%cif(k!=0){sprintf(buff,%c./Sully_%%d%c,k);system(buff);}%c}%c";
fprintf(f,s,10,10,10,k,10,10,10,10,10,10,34,34,10,34,34,10,34,s,34,10,10,10,34,34,10,10,34,34,10,10);
fclose(f);
sprintf(buff,"gcc -Wall -Wextra -Werror -DREP Sully_%d.c -o Sully_%d",k,k);
system(buff);
if(k!=0){sprintf(buff,"./Sully_%d",k);system(buff);}
}
