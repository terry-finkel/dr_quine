#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
int k = 5;
#define F1 int main(void){int fd = open("Sully_5.c", 0);if(fd != -1){close(fd);k-=1;}char buff[62];(sprintf)(buff, "Sully_%d.c", k);FILE *f = fopen(buff, "w");fprintf(f, "#include <fcntl.h>\n#include <stdio.h>\n#include <stdlib.h>\n#include <unistd.h>\nint k = %d;\n#define F1 %s\n#define F2(x) #x\n#define F3(x) F2(x)\nconst char *s = F3(F1);\nF1\n", k, s);fclose(f);(sprintf)(buff, "gcc -Wall -Wextra -Werror Sully_%d.c -o Sully_%d", k, k);system(buff);if (k != 0){(sprintf)(buff, "./Sully_%d", k);system(buff);}return 0;}
#define F2(x) #x
#define F3(x) F2(x)
const char *s = F3(F1);
F1
